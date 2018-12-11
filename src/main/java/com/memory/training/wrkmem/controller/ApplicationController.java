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
		return "index";
	}
	
	@RequestMapping(value = "/activity_1", method = RequestMethod.GET)
	public String firstActivity(Model m, HttpServletRequest request) {
		String refresh = request.getParameter("q");
		Boolean isRefresh = refresh != null && "1".equals(refresh) ? true : false;
		lst = this.populateAppActivities(isRefresh);
		String json = gson.toJson(lst);
		System.out.println(json);
		m.addAttribute("activities", json);
		return "activity_1";
	}
	
	@ResponseBody
	@RequestMapping(value = "/demo_activity_1", method = RequestMethod.GET) 
	public List<Application> loadActivity(Model m) {
		List<Application> list = this.populateAppActivities(false).stream().filter(e -> e.getIs_example()).collect(Collectors.toList());
		System.out.println(gson.toJson(list));
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value = "/start_activity_1", method = RequestMethod.GET) 
	public List<Application> loadActivities(Model m, HttpServletRequest request) {
		
		String app_activity = request.getParameter("app_activity");
		String app_level = request.getParameter("app_level");
		System.out.println("Activity: " + app_activity + ", Level: " + app_level);
		
		Long activityId = Long.parseLong(app_activity);
		Integer activityLevel = Integer.parseInt(app_level) + 1;
		
		List<Application> list = this.populateAppActivities(false);
		List<Application> filteredList = list.stream()
//									.filter(e -> e.getActivity().equals(applicationService.findAnimalById(activityId)))
									.filter(e -> e.getActivity().getId().equals(activityId))
									.filter(e -> e.getActivity_level().equals(activityLevel))
									.filter(e -> !e.getIs_example())
									.collect(Collectors.toList());
		// Move to Next activity with level 1
		if(filteredList.size() == 0)
			filteredList = list.stream()
			.filter(e -> e.getActivity().getId().equals(activityId+1))
			.filter(e -> e.getActivity_level().equals(1))
			.filter(e -> !e.getIs_example())
			.collect(Collectors.toList());
		System.out.println(gson.toJson(filteredList));
		return filteredList;
	}
	
	private List<Application> populateAppActivities(Boolean isRefresh) {
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
