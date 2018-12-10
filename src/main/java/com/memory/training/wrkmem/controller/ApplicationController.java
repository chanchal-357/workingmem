package com.memory.training.wrkmem.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.memory.training.wrkmem.model.ActivityLevels;
import com.memory.training.wrkmem.model.AppActivity;
import com.memory.training.wrkmem.service.ApplicationService;

@Controller
@RequestMapping("/")
public class ApplicationController {

	Gson gson = new Gson();
	
	@Autowired
	ApplicationService applicationService;
	
	private static List<AppActivity> lst = null;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String welcomePage(Model m) {
		return "index";
	}
	
	@RequestMapping(value = "/activity_1", method = RequestMethod.GET)
	public String firstActivity(Model m, HttpServletRequest request) {
		String refresh = request.getParameter("q");
		Boolean isRefresh = refresh != null && "1".equals(refresh) ? true : false;
		activityMap = new TreeMap<Integer, List<AppActivity>>(); // For Test
		lst = this.populateAppActivities(isRefresh);
		String json = gson.toJson(lst);
		System.out.println(json);
		m.addAttribute("activities", json);
		return "activity_1";
	}
	
	@ResponseBody
	@RequestMapping(value = "/demo_activity_1", method = RequestMethod.GET) 
	public List<AppActivity> loadActivity(Model m) {
		List<AppActivity> list = this.populateAppActivities(false).stream().filter(e -> e.getIs_example()).collect(Collectors.toList());
		System.out.println(gson.toJson(list));
		return list;
	}
	
	private static Map<Integer, List<AppActivity>> activityMap = new TreeMap<Integer, List<AppActivity>>();
	
	/*@ResponseBody
	@RequestMapping(value = "/start_activity_1", method = RequestMethod.GET) 
	public Map<Integer, Object> startActivity(Model m, HttpServletRequest request) {
		String app_activity = request.getParameter("app_activity");
		String app_level = request.getParameter("app_level");
		System.out.println("Activity: " + app_activity + ", Level: " + app_level);
		
		List<AppActivity> list = this.populateAppActivities();
		List<AppActivity> filteredList = null;
		if(activityMap.size() == 0) {
			filteredList = list.stream().filter(e -> e.getActivity_id().equals(activityMap.size()+1) && !e.getIs_example()).collect(Collectors.toList());
		}
		else {
			if(list.stream().filter(e -> e.getActivity_id().equals(activityMap.size() + 1) && !e.getIs_example()).collect(Collectors.toList()).size() > 0)
				filteredList = list.stream().filter(e -> e.getActivity_id().equals(activityMap.size() + 1) && !e.getIs_example()).collect(Collectors.toList());
			else
				filteredList = activityMap.get(activityMap.size());
		}
		ActivityLevels al = new ActivityLevels();
		AppActivity act = filteredList != null ? filteredList.get(0) : new AppActivity();
		al.setActivityId(act.getActivity_id());
		Set<Integer> lvls = filteredList.stream()
			    .map(e -> e.getActivity_level())
			    .collect(Collectors.toSet());
		List<Integer> levels = new ArrayList<>(lvls);
		Collections.sort(levels);
		al.setLevels(levels);
		
		activityMap.put(activityMap.size(), filteredList); //Fill Activity Level
		Map<Integer, Object> map = new TreeMap<Integer, Object>();
		map.put(1, al); // purpose?
		map.put(2, filteredList);
		System.out.println(gson.toJson(map));
		return map;
	}*/
	
	
	@ResponseBody
	@RequestMapping(value = "/start_activity_1", method = RequestMethod.GET) 
	public List<AppActivity> loadActivities(Model m, HttpServletRequest request) {
		
		String app_activity = request.getParameter("app_activity");
		String app_level = request.getParameter("app_level");
		System.out.println("Activity: " + app_activity + ", Level: " + app_level);
		
		Integer activityId = Integer.parseInt(app_activity);
		Integer activityLevel = Integer.parseInt(app_level) + 1;
		
		List<AppActivity> list = this.populateAppActivities(false);
		List<AppActivity> filteredList = list.stream()
									.filter(e -> e.getActivity_id().equals(activityId))
									.filter(e -> e.getActivity_level().equals(activityLevel))
									.filter(e -> !e.getIs_example())
									.collect(Collectors.toList());
		if(filteredList.size() == 0)
			filteredList = list.stream()
			.filter(e -> e.getActivity_id().equals(activityId+1))
			.filter(e -> e.getActivity_level().equals(1))
			.filter(e -> !e.getIs_example())
			.collect(Collectors.toList());
		System.out.println(gson.toJson(filteredList));
		return filteredList;
	}
	
	private List<AppActivity> populateAppActivities(Boolean isRefresh) {
		if(lst == null || isRefresh)
			lst = applicationService.fetchAllActivities();
		return lst;
	}
	
	//TODO Refresh level method
	@ResponseBody
	@RequestMapping(value = "/refresh_activity", method = RequestMethod.GET) 
	public String refreshActivity(Model m) {
		return "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/refresh_activity_level", method = RequestMethod.GET) 
	public String refreshActivityLevel(Model m) {
		return "";
	}
}
