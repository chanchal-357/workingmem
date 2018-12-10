package com.memory.training.wrkmem.service;

import java.util.List;

import com.memory.training.wrkmem.model.AppActivity;

public interface ApplicationService {

	List<AppActivity> fetchAllActivities();
}
