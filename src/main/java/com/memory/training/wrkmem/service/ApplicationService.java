package com.memory.training.wrkmem.service;

import java.util.List;

import com.memory.training.wrkmem.model.Activity;
import com.memory.training.wrkmem.model.AppObject;
import com.memory.training.wrkmem.model.Application;

public interface ApplicationService {

	List<Application> fetchAllActivities();
	
	AppObject findAppObjectById(Long id);
	
	Activity findActivityById(Long id);
}
