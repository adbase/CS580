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

	@Column(length = 32)
	private String date;

	@Column(length = 32)
	private String trip_plan_location;

	@Column(length = 32)
	private String type;

	@Column(length = 32)
	private String vehicle_location;

	@Column(length = 32)
	private String vehicle_type;

	@Column(length = 32)
	private String use_partner_company;

	@Column(length = 32)
	private String flight;

	@Column(length = 32)
	private String guide_room;

	@Column(length = 32)
	private String guide_room_by;

	@Column(length = 32)
	private String guests_room;

	@Column(length = 32)
	private String guests_room_by;
	@Column(length = 32)
	private String breakfast;
	@Column(length = 32)
	private String lunch;

	@Column(length = 32)
	private String dinner;

	@Column(length = 32)
	private String tripid;
	
	@Column(length = 32)
	private String guide_id;
	
	@Column(length = 32)
	private String guide_name;
	
	///getters and setters
	
	public String getTripid() {
		return tripid;
	}

	public void setTripid(String tripid) {
		this.tripid = tripid;
	}

	public String getId() {
		return id;
	}

	public String getDate() {
		return date;
	}

	public String getTrip_plan_location() {
		return trip_plan_location;
	}

	public String getType() {
		return type;
	}

	public String getVehicle_location() {
		return vehicle_location;
	}

	public String getVehicle_type() {
		return vehicle_type;
	}

	public String getUse_partner_company() {
		return use_partner_company;
	}

	public String getFlight() {
		return flight;
	}

	public String getGuide_room() {
		return guide_room;
	}

	public String getGuide_room_by() {
		return guide_room_by;
	}

	public String getGuests_room() {
		return guests_room;
	}

	public String getGuests_room_by() {
		return guests_room_by;
	}

	public String getBreakfast() {
		return breakfast;
	}

	public String getLunch() {
		return lunch;
	}

	public String getDinner() {
		return dinner;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setTrip_plan_location(String trip_plan_location) {
		this.trip_plan_location = trip_plan_location;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setVehicle_location(String vehicle_location) {
		this.vehicle_location = vehicle_location;
	}

	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}

	public void setUse_partner_company(String use_partner_company) {
		this.use_partner_company = use_partner_company;
	}

	public void setFlight(String flight) {
		this.flight = flight;
	}

	public void setGuide_room(String guide_room) {
		this.guide_room = guide_room;
	}

	public void setGuide_room_by(String guide_room_by) {
		this.guide_room_by = guide_room_by;
	}

	public void setGuests_room(String guests_room) {
		this.guests_room = guests_room;
	}

	public void setGuests_room_by(String guests_room_by) {
		this.guests_room_by = guests_room_by;
	}

	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}

	public void setLunch(String lunch) {
		this.lunch = lunch;
	}

	public void setDinner(String dinner) {
		this.dinner = dinner;
	}
}
