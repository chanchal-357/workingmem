package com.memory.training.wrkmem.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.memory.training.wrkmem.model.Activity;
import com.memory.training.wrkmem.model.AppObject;
import com.memory.training.wrkmem.model.Application;
import com.memory.training.wrkmem.repository.ActivityRepository;
import com.memory.training.wrkmem.repository.AppObjectRepository;
import com.memory.training.wrkmem.repository.ApplicationRepository;

@Service("applicationService")
public class ApplicationServiceImpl implements ApplicationService {

	@Autowired
	ApplicationRepository applicationRepository;
	
	@Autowired
	AppObjectRepository appObjectRepository;
	
	@Autowired
	ActivityRepository activityRepository;
	
	@Override
	public List<Application> fetchAllActivities() {
		List<Application> list = new ArrayList<Application>();
		Iterable<Application> iterable = applicationRepository.findAll();
		iterable.forEach(list::add);
		return list;
	}

	@Override
	public AppObject findAppObjectById(Long id) {
		return appObjectRepository.findById(id).get();
	}

	@Override
	public Activity findActivityById(Long id) {
		return activityRepository.findById(id).get();
	}
	
	
}
