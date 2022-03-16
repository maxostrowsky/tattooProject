package com.codingdojo.tattooProject.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.tattooProject.models.Shop;



public interface ShopRepository extends  CrudRepository<Shop, Long>{
	
	Optional<Shop> findByShopName(String shopName);
	
}
