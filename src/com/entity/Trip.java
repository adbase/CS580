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
	private String id;
	
	@Column(length = 32)
	private String contact;
	
	@Column(length = 32)
	private String phone;
	
	@Column(length = 32)
	private String email;
	
	@Column(length = 32)
	private String name;
	
	@Column(length = 32)
	private String num_people;
	
	@Column(length = 32)
	private String overtime_payment_type;
	
	@Column(length = 32)
	private String start_date;
	
	@Column(length = 32)
	private String overtime_rate;
	
	@Column(length = 32)
	private String end_date;
	
	@Column(length = 32)
	private String disable_account;
	
	@Column(length = 32)
	private String Organization_id;
	
	@Column(length = 32)
	private String startpartnercompanyid;
	@Column(length = 32)
	private String startpartnercompanyname;
	@Column(length = 32)
	private String localPartnercompanyid;
	@Column(length = 32)
	private String localPartnercompanyname;
	@Column(length = 32)
	private String startpartnercompanyopid;
	@Column(length = 32)
	private String startpartnercompanyopname;
	@Column(length = 32)
	private String status;
	@Column(length = 32)
	private String localPartnercompanyopid;
	@Column(length = 32)
	private String partner_team_id;
	
	
	public String getPartner_team_id() {
		return partner_team_id;
	}
	public void setPartner_team_id(String partner_team_id) {
		this.partner_team_id = partner_team_id;
	}
	///get and set
	public String getId() {
		return id;
	}
	public String getContact() {
		return contact;
	}
	public String getPhone() {
		return phone;
	}
	public String getEmail() {
		return email;
	}
	public String getName() {
		return name;
	}
	public String getNum_people() {
		return num_people;
	}
	public String getOvertime_payment_type() {
		return overtime_payment_type;
	}
	public String getStart_date() {
		return start_date;
	}
	public String getOvertime_rate() {
		return overtime_rate;
	}
	public String getEnd_date() {
		return end_date;
	}
	public String getDisable_account() {
		return disable_account;
	}
	public String getOrganization_id() {
		return Organization_id;
	}
	public String getStartpartnercompanyid() {
		return startpartnercompanyid;
	}
	public String getStartpartnercompanyname() {
		return startpartnercompanyname;
	}
	public String getLocalPartnercompanyid() {
		return localPartnercompanyid;
	}
	public String getLocalPartnercompanyname() {
		return localPartnercompanyname;
	}
	public String getStartpartnercompanyopid() {
		return startpartnercompanyopid;
	}
	public String getStartpartnercompanyopname() {
		return startpartnercompanyopname;
	}
	public String getStatus() {
		return status;
	}
	public String getLocalPartnercompanyopid() {
		return localPartnercompanyopid;
	}
	public String getLocalPartnercompanyopname() {
		return localPartnercompanyopname;
	}
	
	
	
	
	//get and set
	public void setId(String id) {
		this.id = id;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setNum_people(String num_people) {
		this.num_people = num_people;
	}
	public void setOvertime_payment_type(String overtime_payment_type) {
		this.overtime_payment_type = overtime_payment_type;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public void setOvertime_rate(String overtime_rate) {
		this.overtime_rate = overtime_rate;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public void setDisable_account(String disable_account) {
		this.disable_account = disable_account;
	}
	public void setOrganization_id(String organization_id) {
		Organization_id = organization_id;
	}
	public void setStartpartnercompanyid(String startpartnercompanyid) {
		this.startpartnercompanyid = startpartnercompanyid;
	}
	public void setStartpartnercompanyname(String startpartnercompanyname) {
		this.startpartnercompanyname = startpartnercompanyname;
	}
	public void setLocalPartnercompanyid(String localPartnercompanyid) {
		this.localPartnercompanyid = localPartnercompanyid;
	}
	public void setLocalPartnercompanyname(String localPartnercompanyname) {
		this.localPartnercompanyname = localPartnercompanyname;
	}
	public void setStartpartnercompanyopid(String startpartnercompanyopid) {
		this.startpartnercompanyopid = startpartnercompanyopid;
	}
	public void setStartpartnercompanyopname(String startpartnercompanyopname) {
		this.startpartnercompanyopname = startpartnercompanyopname;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setLocalPartnercompanyopid(String localPartnercompanyopid) {
		this.localPartnercompanyopid = localPartnercompanyopid;
	}
	public void setLocalPartnercompanyopname(String localPartnercompanyopname) {
		this.localPartnercompanyopname = localPartnercompanyopname;
	}
	@Column(length = 32)
	private String localPartnercompanyopname;

	

}
