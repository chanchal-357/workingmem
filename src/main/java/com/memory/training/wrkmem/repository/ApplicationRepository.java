package com.memory.training.wrkmem.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.memory.training.wrkmem.model.Application;

@Repository("applicationRepository")
public interface ApplicationRepository extends CrudRepository<Application, Long> {

}
