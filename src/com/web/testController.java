package com.web;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entity.Trip;

@Controller
public class testController {
	@RequestMapping(value = "/saveTrip", method = RequestMethod.POST)
	public ResponseEntity<Void> saveTrip(@RequestBody Trip p) {
		
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.OK);
		
	}
	
}
