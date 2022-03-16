package com.codingdojo.tattooProject.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.tattooProject.models.UserTattoo;

@Repository
public interface UserTattooRepository extends CrudRepository<UserTattoo, Long>{
	
	Optional <UserTattoo> findByStyle(String style);
	Iterable<UserTattoo> findAll();
}