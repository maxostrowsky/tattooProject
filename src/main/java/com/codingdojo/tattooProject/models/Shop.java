package com.codingdojo.tattooProject.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="shops")
public class Shop {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	@Size(min=1)
	private String shopName;
	
	@NotNull
	@Size(min=1)
	private String shopAddress;
	
	@NotNull
	@Size(min=1)
	private String shopCity;
	
	@NotNull
	@Size(min=1)
	private String shopState;
	
	@NotNull
	@Size(min=5, max=5)
	private String shopZip;
	
	public Shop() {}

	@OneToMany(mappedBy="shop", fetch = FetchType.LAZY)
	private List<Artist> artists;
	 
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getShopAddress() {
		return shopAddress;
	}

	public void setShopAddress(String shopAddress) {
		this.shopAddress = shopAddress;
	}

	public String getShopCity() {
		return shopCity;
	}

	public void setShopCity(String shopCity) {
		this.shopCity = shopCity;
	}

	public String getShopState() {
		return shopState;
	}

	public void setShopState(String shopState) {
		this.shopState = shopState;
	}

	public String getShopZip() {
		return shopZip;
	}

	public void setShopZip(String shopZip) {
		this.shopZip = shopZip;
	}
	
	
}
