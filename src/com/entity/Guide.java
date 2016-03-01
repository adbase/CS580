package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "guide")
public class Guide {
	@Id
	@Column(length = 32)
	private String id;

	@Column(length = 32)
	private String name_chn;

	@Column(length = 32)
	private String name_eng;
	
	@Column(length = 32)
	private String phone;
	
	@Column(length = 32)
	private String companyid;
	
	public String getCompanyid() {
		return companyid;
	}

	public void setCompanyid(String companyid) {
		this.companyid = companyid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName_chn() {
		return name_chn;
	}

	public void setName_chn(String name_chn) {
		this.name_chn = name_chn;
	}

	public String getName_eng() {
		return name_eng;
	}

	public void setName_eng(String name_eng) {
		this.name_eng = name_eng;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
