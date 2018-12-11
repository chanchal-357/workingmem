package com.memory.training.wrkmem.service;

import java.util.List;

import com.memory.training.wrkmem.model.Activity;
import com.memory.training.wrkmem.model.Animal;
import com.memory.training.wrkmem.model.Application;

public interface ApplicationService {

	List<Application> fetchAllActivities();
	
	Animal findAnimalById(Long id);
	
	Activity findActivityById(Long id);
}
