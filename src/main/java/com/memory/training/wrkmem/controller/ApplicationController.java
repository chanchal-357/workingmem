package com.memory.training.wrkmem.controller;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.memory.training.wrkmem.model.Application;
import com.memory.training.wrkmem.service.ApplicationService;

@Controller
@RequestMapping("/")
public class ApplicationController {

	Gson gson = new Gson();
	
	@Autowired
	ApplicationService applicationService;
	
	private static List<Application> lst = null;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String welcomePage(Model m) {
		m.addAttribute("mainmenu", "home_page");
		return "index";
	}
	
	@RequestMapping(value = "/activity_1", method = RequestMethod.GET)
	public String firstActivity(Model m, HttpServletRequest request) {
		String pageUrl = "activity_1";
		return processActivityPage(request, m, pageUrl, 1L);
	}
	
	@RequestMapping(value = "/activity_2", method = RequestMethod.GET)
	public String secondActivity(Model m, HttpServletRequest request) {
		String pageUrl = "activity_2"; 
		return processActivityPage(request, m, pageUrl, 2L);
	}
	
	@RequestMapping(value = "/activity_3", method = RequestMethod.GET)
	public String thirdActivity(Model m, HttpServletRequest request) {
		String pageUrl = "activity_3"; 
		return processActivityPage(request, m, pageUrl, 3L);
	}
	
	@RequestMapping(value = "/activity_4", method = RequestMethod.GET)
	public String fourthActivity(Model m, HttpServletRequest request) {
		String pageUrl = "activity_4"; 
		return processActivityPage(request, m, pageUrl, 4L);
	}
	
	@RequestMapping(value = "/activity_5", method = RequestMethod.GET)
	public String fifthActivity(Model m, HttpServletRequest request) {
		String pageUrl = "activity_5"; 
		return processActivityPage(request, m, pageUrl, 5L);
	}
	
	@RequestMapping(value = "/tstSoundMangr2", method = RequestMethod.GET)
	public String testActivity(Model m, HttpServletRequest request) {
		String pageUrl = "tstSoundMangr2"; 
		return processActivityPage(request, m, pageUrl, 5L);
	}
	
	@ResponseBody
	@RequestMapping(value = "/demo_activity", method = RequestMethod.GET) 
	public List<Application> loadDemoActivity(HttpServletRequest request) {
		String activity_id = request.getParameter("activity_id") != null ? request.getParameter("activity_id") : "0";
		Long activityId = Long.parseLong(activity_id);
		return this.getDemoActivityList(activityId);
	}
	
	@ResponseBody
	@RequestMapping(value = "/start_activity", method = RequestMethod.GET) 
	public List<Application> loadActivity(HttpServletRequest request) {
		List<Application> list = this.getActivityList(request);
		if(request.getParameter("activity_id") != null && "3".equals(request.getParameter("activity_id"))) {
			Collections.shuffle(list);
			//System.out.println("Shuffled list: " + gson.toJson(list));
		}
		return list;
	}
	
	private List<Application> populateAppActivities(Boolean isRefresh) {
		if(lst == null || isRefresh)
			lst = applicationService.fetchAllActivities();
		return lst;
	}
	
	private String processActivityPage(HttpServletRequest request, Model m, String pageUrl, Long activity_id) {
		String refresh = request.getParameter("q");
		Boolean isRefresh = refresh != null && "1".equals(refresh) ? true : false;
		lst = this.populateAppActivities(isRefresh);
		System.out.println(gson.toJson(lst));
		m.addAttribute("mainmenu", pageUrl);
		List<Long> levels = lst.stream()
							.map(e -> e.getActivity().getId())
							.sorted()
							.distinct()
							.collect(Collectors.toList());
		m.addAttribute("levels", levels);
		return pageUrl;
	}
	
	private List<Application> getDemoActivityList(Long activityId) {
		List<Application> list = this.populateAppActivities(false).stream()
				.filter(e -> e.getActivity().getId().equals(activityId))
				.filter(e -> e.getIs_example())
				.collect(Collectors.toList());
		return list;
	}
	
	private List<Application> getActivityList(HttpServletRequest request) {

		String activity_id = request.getParameter("activity_id");
		String app_level = request.getParameter("app_level");
		String level_round = request.getParameter("level_round");
		System.out.println("Level: " + app_level + ", Round: " + level_round);
		Long activityId = Long.parseLong(activity_id);
		Integer activityLevel = Integer.parseInt(app_level);
		Integer levelRound = Integer.parseInt(level_round) + 1;
		
		List<Application> list = this.populateAppActivities(false);
		List<Application> filteredList = list.stream()
				.filter(e -> e.getActivity().getId().equals(activityId))
				.filter(e -> e.getActivity_level().equals(activityLevel))
				.filter(e -> e.getLevel_round().equals(levelRound))
				.filter(e -> !e.getIs_example())
				.collect(Collectors.toList());
		
		// Move to Next activity with level 1
		if(filteredList.size() == 0) {
			filteredList = list.stream()
					.filter(e -> e.getActivity().getId().equals(activityId))
					.filter(e -> e.getActivity_level().equals(activityLevel + 1)) // Move to Next Level
					.filter(e -> e.getLevel_round().equals(1))
					.filter(e -> !e.getIs_example())
					.collect(Collectors.toList());
		}
		
		// calculate levelCompletion in %
		Integer level = filteredList.size() > 0 ? filteredList.get(0).getActivity_level() : 0;
		Long totalCnt = list.stream()
				.filter(e -> e.getActivity().getId().equals(activityId))
				.filter(e -> e.getActivity_level().equals(level)).count();
		
		Integer maxLevelRound = filteredList.stream().mapToInt(e -> e.getLevel_round())
				.max().orElse(0);
		
		Long roundCompleted = list.stream()
				.filter(e -> e.getActivity().getId().equals(activityId))
				.filter(e -> e.getActivity_level().equals(level))
				.filter(e -> e.getLevel_round() <= maxLevelRound).count();
		
		Long perct = (roundCompleted * 100)/(totalCnt != 0 ? totalCnt : 1); // Arithmetic exception / by 0
		System.out.println("Level Completion is: " + perct + ", for Level: " + level + ", round: " + levelRound);
		filteredList.stream().forEach(e->e.setLevelCompletion(perct));
		System.out.println(gson.toJson(filteredList));
		return filteredList;
	}
	
}
