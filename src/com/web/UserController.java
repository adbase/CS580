package com.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.User;
import com.manager.UserManager;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource(name = "userManager")
	private UserManager userManager;

	@RequestMapping("/addUser")
	public String addUser(User user, HttpServletRequest request) {

		userManager.addUser(user);

		return "/Index";
	}
	
	
}
