package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "Trip") 
public class Trip {
	
	@Id
	@Column(length = 32)
	private String TourName;
	
	@Column(length = 32)
	private String Status;
	
	@Column(length = 45)
	private String UpperOP;
<<<<<<< HEAD
	
	
	@Column(length = 45)
	private String PeopleNumber;
	
	@Column(length = 45)
	private String StartDate;
	
	@Column(length = 45)
	private String EndDate;
	
	@Column(length = 45)
	private String StartLoc;
	
	@Column(length = 45)
	private String Tripcol;

=======
	
	@Column(length = 45)
	private String TourName;
	
	@Column(length = 45)
	private String PeopleNumber;
	
	@Column(length = 45)
	private String StartDate;
	
	@Column(length = 45)
	private String EndDate;
	
	@Column(length = 45)
	private String StartLoc;
	
	@Column(length = 45)
	private String Tripcol;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

>>>>>>> origin/master
	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	public String getUpperOP() {
		return UpperOP;
	}

	public void setUpperOP(String upperOP) {
		UpperOP = upperOP;
	}

	public String getTourName() {
		return TourName;
	}

	public void setTourName(String tourName) {
		TourName = tourName;
	}

	public String getPeopleNumber() {
		return PeopleNumber;
	}

	public void setPeopleNumber(String peopleNumber) {
		PeopleNumber = peopleNumber;
	}

	public String getStartDate() {
		return StartDate;
	}

	public void setStartDate(String startDate) {
		StartDate = startDate;
	}

	public String getEndDate() {
		return EndDate;
	}

	public void setEndDate(String endDate) {
		EndDate = endDate;
	}

	public String getStartLoc() {
		return StartLoc;
	}

	public void setStartLoc(String startLoc) {
		StartLoc = startLoc;
	}

	public String getTripcol() {
		return Tripcol;
	}

	public void setTripcol(String tripcol) {
		Tripcol = tripcol;
	}
}
