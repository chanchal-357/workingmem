package com.memory.training.wrkmem.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.memory.training.wrkmem.model.Activity;

@Repository("activityRepository")
public interface ActivityRepository extends CrudRepository<Activity, Long> {

}
