package com.memory.training.wrkmem.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.memory.training.wrkmem.model.Animal;

@Repository("animalRepository")
public interface AnimalRepository extends CrudRepository<Animal, Long> {

}
