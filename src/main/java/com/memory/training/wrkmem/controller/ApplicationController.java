package com.memory.training.wrkmem.controller;

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
		String refresh = request.getParameter("q");
		Boolean isRefresh = refresh != null && "1".equals(refresh) ? true : false;
		lst = this.populateAppActivities(isRefresh);
		System.out.println(gson.toJson(lst));
		m.addAttribute("mainmenu", "activity_1");
		return "activity_1";
	}
	
	@RequestMapping(value = "/activity_2", method = RequestMethod.GET)
	public String secondActivity(Model m, HttpServletRequest request) {
		String refresh = request.getParameter("q");
		Boolean isRefresh = refresh != null && "1".equals(refresh) ? true : false;
		lst = this.populateAppActivities(isRefresh);
		System.out.println(gson.toJson(lst));
		m.addAttribute("mainmenu", "activity_2");
		return "activity_2";
	}
	
	@RequestMapping(value = "/activity_3", method = RequestMethod.GET)
	public String thirdActivity(Model m, HttpServletRequest request) {
		String refresh = request.getParameter("q");
		Boolean isRefresh = refresh != null && "1".equals(refresh) ? true : false;
		lst = this.populateAppActivities(isRefresh);
		System.out.println(gson.toJson(lst));
		m.addAttribute("mainmenu", "activity_3");
		return "activity_3";
	}
	
	@ResponseBody
	@RequestMapping(value = "/demo_activity_1", method = RequestMethod.GET) 
	public List<Application> loadActivity(Model m) {
		List<Application> list = this.populateAppActivities(false).stream()
									.filter(e -> e.getActivity().getId().equals(1L))
									.filter(e -> e.getIs_example())
									.collect(Collectors.toList());
		System.out.println(gson.toJson(list));
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value = "/demo_activity_2", method = RequestMethod.GET) 
	public List<Application> load2ndDemoActivity(Model m) {
		List<Application> list = this.populateAppActivities(false).stream()
				.filter(e -> e.getActivity().getId().equals(2L))
				.filter(e -> e.getIs_example())
				.collect(Collectors.toList());
		System.out.println(gson.toJson(list));
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value = "/start_activity_1", method = RequestMethod.GET) 
	public List<Application> load1stActivity(Model m, HttpServletRequest request) {
		
		String app_level = request.getParameter("app_level");
		String level_round = request.getParameter("level_round");
		System.out.println("Level: " + app_level + ", Round: " + level_round);
		
		Long activityId = 1L; // For Activity One Only
		Integer activityLevel = Integer.parseInt(app_level);
		Integer levelRound = Integer.parseInt(level_round) + 1;
		
		List<Application> list = this.populateAppActivities(false);
		List<Application> filteredList = list.stream()
//									.filter(e -> e.getActivity().equals(applicationService.findAnimalById(activityId)))
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
		//System.out.println(gson.toJson(filteredList));
		
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
		
		Long perct = (roundCompleted * 100)/totalCnt;
		System.out.println("Level Completion is: " + perct + ", for Level: " + level + ", round: " + levelRound);
		filteredList.stream().forEach(e->e.setLevelCompletion(perct));
		System.out.println(gson.toJson(filteredList));
		return filteredList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/start_activity_2", method = RequestMethod.GET) 
	public List<Application> load2ndActivity(Model m, HttpServletRequest request) {
		
		String app_level = request.getParameter("app_level");
		String level_round = request.getParameter("level_round");
		System.out.println("Level: " + app_level + ", Round: " + level_round);
		
		Long activityId = 2L; // For Activity One Only
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
		
		Long perct = (roundCompleted * 100)/totalCnt;
		System.out.println("Level Completion is: " + perct + ", for Level: " + level + ", round: " + levelRound);
		filteredList.stream().forEach(e->e.setLevelCompletion(perct));
		System.out.println(gson.toJson(filteredList));
		return filteredList;
	}
	
	private List<Application> populateAppActivities(Boolean isRefresh) {
		if(lst == null || isRefresh)
			lst = applicationService.fetchAllActivities();
		return lst;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/refresh_activity_level", method = RequestMethod.GET) 
	public String refreshActivityLevel(Model m, HttpServletRequest request) {
		String level = request.getParameter("lvl");
		return level;
	}
	
}
