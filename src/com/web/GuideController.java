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

import com.entity.Guide;
import com.manager.GuideManager;


@Controller

public class GuideController {
	@Resource(name = "guideManager")
	private GuideManager guideManager;
	
	@RequestMapping(value = "/searchAllGuides", method = RequestMethod.GET)
	public ResponseEntity<List> getAllVehicle() {
		List rs = guideManager.searchAll();
		if (rs.isEmpty()) {
			return new ResponseEntity<List>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List>(rs, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/addNewGuide", method = RequestMethod.POST)
	public ResponseEntity<Void> addNewGuide(@RequestBody Guide p) {
		
		guideManager.add(p);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.OK);
	}
	@RequestMapping(value = "/updateGuide", method = RequestMethod.POST)
	public ResponseEntity<Void> updateGuide(@RequestBody Guide p) {
		
		guideManager.update(p);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/deleteGuide/{id}", method = RequestMethod.DELETE)
	public ResponseEntity<Void> deleteGuideById(@PathVariable("id") String id) {
		Guide g= guideManager.findById(id);
		guideManager.delete(g);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.OK);
	}
	
}
