package com.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entity.Message;
import com.entity.PartnerCompany;
import com.manager.PartnerCompanyManager;
import com.manager.UserManager;

@Controller
public class ParnterCompanyController {
	
	@Resource(name = "partnerCompanyManager")
	private PartnerCompanyManager partnerCompanyManager;
	
	@RequestMapping(value = "/searchAllCompany/{type}", method = RequestMethod.GET)
	public ResponseEntity<List> getVehicleCompany(@PathVariable("type") String type) {
		List rs = partnerCompanyManager.searchAllCompany(type);
		if (rs.isEmpty()) {
			return new ResponseEntity<List>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List>(rs, HttpStatus.OK);
	}
	@RequestMapping(value = "/searchAllFlightCompany", method = RequestMethod.GET)
	public ResponseEntity<List> getFlightCompany() {
		List rs = partnerCompanyManager.searchAllCompany("flight");
		if (rs.isEmpty()) {
			return new ResponseEntity<List>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List>(rs, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/createNewPartnerCompanyID", method = RequestMethod.GET)
	public ResponseEntity<Message> createNewPartnerCompanyID() {
		Date date = new Date();
		DateFormat df2 = DateFormat.getDateTimeInstance();
		String id = df2.format(date);
		Message m =new Message();
		m.setMessage(id);
		return new ResponseEntity<Message>(m,HttpStatus.OK);
	}
	@RequestMapping(value = "/addNewPartnerCompany", method = RequestMethod.POST)
	public ResponseEntity<Void> createNewPartnerCompany(@RequestBody PartnerCompany p) {
		
		partnerCompanyManager.addNewCompany(p);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/updatePartnerCompany", method = RequestMethod.POST)
	public ResponseEntity<Void> updatePartnerCompany(@RequestBody PartnerCompany p) {
		
		partnerCompanyManager.updateCompany(p);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/deletePartnerCompany/{id}", method = RequestMethod.DELETE)
	public ResponseEntity<Void> deletePartnerCompany(@PathVariable("id") String id) {
		
		PartnerCompany p = partnerCompanyManager.findById(id);
		
		partnerCompanyManager.deleteCompany(p);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.OK);
	}
	
	
}
