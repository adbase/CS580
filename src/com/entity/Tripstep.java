package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tripstep")
public class Tripstep {
	@Id
	@Column(length = 32)
	private String id;

	@Column(length = 45)
	private String  Date;
	
	@Column(length = 45)
	private String Rout;
	
	@Column(length = 45)
	private String TG;
	
	@Column(length = 45)
	private String Location;
	
	@Column(length = 45)
	private String Zipcode;
	
	@Column(length = 45)
	private String VeTy;
	
	@Column(length = 45)
	private String VeNo;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getRout() {
		return Rout;
	}

	public void setRout(String rout) {
		Rout = rout;
	}

	public String getTG() {
		return TG;
	}

	public void setTG(String tG) {
		TG = tG;
	}

	public String getLocation() {
		return Location;
	}

	public void setLocation(String location) {
		Location = location;
	}

	public String getZipcode() {
		return Zipcode;
	}

	public void setZipcode(String zipcode) {
		Zipcode = zipcode;
	}

	public String getVeTy() {
		return VeTy;
	}

	public void setVeTy(String veTy) {
		VeTy = veTy;
	}

	public String getVeNo() {
		return VeNo;
	}

	public void setVeNo(String veNo) {
		VeNo = veNo;
	}
}
