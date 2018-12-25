package com.memory.training.wrkmem.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.memory.training.wrkmem.model.AppObject;

@Repository("appObjectRepository")
public interface AppObjectRepository extends CrudRepository<AppObject, Long> {

}
