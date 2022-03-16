package com.codingdojo.tattooProject.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.codingdojo.tattooProject.services.HomeService;

@Controller
public class HomeController {
	
	@Autowired
	HomeService homeServ;
	
	@GetMapping("/")
	public String login() {
		return "Home.jsp";
	}

	@GetMapping("/dashboard")
	public String dashboard() {
		return "Dashboard.jsp";
	}
	
	@GetMapping("/logout") 
	public String logout(HttpSession session) {
	session.invalidate();
	return "redirect:/";
	}
}