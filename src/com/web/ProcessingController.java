package com.web;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.UriComponentsBuilder;

import com.entity.Organization;
import com.entity.Trip;
import com.manager.OrganizationManager;
import com.manager.TripManager;


@Controller
public class ProcessingController {

	@Autowired
	private OrganizationManager organizationManager;
	@Autowired
	private TripManager tripManager;
	
	@RequestMapping(value = "/getInitDate", method = RequestMethod.GET)
	public  ResponseEntity<List> getInitDate() {
		//organizationManager.findOrganization();
		List rs = organizationManager.findOrganization();
		if(rs.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(rs, HttpStatus.OK);
	}
	@RequestMapping(value = "/createTrip", method = RequestMethod.GET)
	public ResponseEntity<Void>  createTrip(@RequestBody Trip trip,UriComponentsBuilder uriComponentsBuilder){
		tripManager.addTrip(trip);
		HttpHeaders headers = new HttpHeaders();
        headers.setLocation(uriComponentsBuilder.path("/user/{id}").buildAndExpand(trip.getId()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
		
	}
}
