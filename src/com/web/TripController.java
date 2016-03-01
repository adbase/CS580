package com.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.UriComponentsBuilder;

import com.entity.Children;
import com.entity.Trip;
import com.entity.Tripstep;
import com.entity.Vehicle;
import com.manager.TripManager;
import com.manager.TripstepManager;

@Controller
public class TripController {
	@Resource(name = "tripManager")
	private TripManager tripManager;
	
	@Resource(name = "tripstepManager")
	private TripstepManager tripstepManager;
	
	@RequestMapping(value = "/searchAllTrips", method = RequestMethod.GET)
	public ResponseEntity<List> searchAllTrips() {
		List rs = tripManager.searchAllTrips();
		if (rs.isEmpty()) {
			return new ResponseEntity<List>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List>(rs, HttpStatus.OK);
	}
	
	/**
	 * Add a new trip  
	 * @param p
	 * @return
	 */
	@RequestMapping(value = "/addTrip", method = RequestMethod.POST)
	public ResponseEntity<Void> addNewVehicle(@RequestBody Trip p) {
		
		tripManager.addTrip(p);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/addTripsteps", method = RequestMethod.POST)
	public ResponseEntity<Void> addChildren(@RequestBody List<Tripstep> list, UriComponentsBuilder ucBuilder) {
		
		for(int i=0;i<list.size();i++){
			tripstepManager.add(list.get(i));
		}
		//tripstepManager.addChildren(children);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	}
	
	
}
