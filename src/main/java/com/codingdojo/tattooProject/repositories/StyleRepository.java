package com.codingdojo.tattooProject.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.tattooProject.models.Style;

public interface StyleRepository extends CrudRepository<Style, Long> {
	
	 Optional<Style> findByStyleName(String styleName);
	
}
