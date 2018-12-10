package com.memory.training.wrkmem.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.memory.training.wrkmem.model.AppActivity;
import com.memory.training.wrkmem.repository.ApplicationRepository;

@Service("applicationService")
public class ApplicationServiceImpl implements ApplicationService {

	@Autowired
	ApplicationRepository applicationRepository;
	
	@Override
	public List<AppActivity> fetchAllActivities() {
		List<AppActivity> list = new ArrayList<AppActivity>();
		Iterable<AppActivity> iterable = applicationRepository.findAll();
		iterable.forEach(list::add);
		return list;
	}
}
