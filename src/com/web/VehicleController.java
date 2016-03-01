package com.web;

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

import com.entity.PartnerCompany;
import com.entity.Vehicle;
import com.manager.VehicleManager;

@Controller
public class VehicleController {
	@Resource(name = "vehicleManager")
	private VehicleManager vehicleManager;
	
	@RequestMapping(value = "/searchAllVechile", method = RequestMethod.GET)
	public ResponseEntity<List> getAllVehicle() {
		List rs = vehicleManager.searchAll();
		if (rs.isEmpty()) {
			return new ResponseEntity<List>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List>(rs, HttpStatus.OK);
	}
	@RequestMapping(value = "/addNewVehicle", method = RequestMethod.POST)
	public ResponseEntity<Void> addNewVehicle(@RequestBody Vehicle p) {
		
		vehicleManager.add(p);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/updateVehicle", method = RequestMethod.POST)
	public ResponseEntity<Void> updateVehicle(@RequestBody Vehicle p) {
		
		vehicleManager.update(p);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/deleteVehicle/{id}", method = RequestMethod.DELETE)
	public ResponseEntity<Void> deletePartnerCompany(@PathVariable("id") String id) {
		
		Vehicle p = vehicleManager.findById(id);
		
		vehicleManager.delete(p);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.OK);
	}
	
	
}
