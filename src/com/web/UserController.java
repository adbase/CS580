package com.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriComponentsBuilder;

import com.entity.Children;
import com.entity.User;
import com.manager.UserManager;

@Controller
public class UserController {

	@Resource(name = "userManager")
	private UserManager userManager;

	@RequestMapping(value = "/createChildren", method = RequestMethod.POST)
	public ResponseEntity<Void> addChildren(@RequestBody List<Children> children, UriComponentsBuilder ucBuilder) {
		//userManager.addChildren(children);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public ResponseEntity<Void> addUser(@RequestBody User user) {
		//userManager.addUser(user);
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.CREATED);

	}
	
	@RequestMapping(value = "/userSearch", method = RequestMethod.GET)
	public ResponseEntity<List> getAllUserS(){
		List rs = userManager.getAllUser();
		if(rs.isEmpty()){
            return new ResponseEntity<List>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List>(rs, HttpStatus.OK);
	}

}
