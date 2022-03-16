package com.codingdojo.tattooProject.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.tattooProject.models.Artist;




@Repository
public interface ArtistRepository extends CrudRepository<Artist, Long> {
	
	List<Artist> findAll();
	Optional<Artist> findByEmail(String email);

}
