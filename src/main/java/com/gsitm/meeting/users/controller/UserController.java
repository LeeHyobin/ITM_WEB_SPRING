package com.gsitm.meeting.users.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	
	@GetMapping("/users/login")
	public String login() {
		return "users/login";
	}
}
