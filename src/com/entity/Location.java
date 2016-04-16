package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "Location")
public class Location {
	@Id
	@Column(length = 32)
	private String id;
	
	@Column(length = 45)
	private String CityName;

	@Column(length = 45)
	private String Zipcode;
	
	@Column(length = 45)
	private String Initials;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCityName() {
		return CityName;
	}

	public void setCityName(String cityName) {
		CityName = cityName;
	}

	public String getZipcode() {
		return Zipcode;
	}

	public void setZipcode(String zipcode) {
		Zipcode = zipcode;
	}

	public String getInitials() {
		return Initials;
	}

	public void setInitials(String initials) {
		Initials = initials;
	}


	
}
