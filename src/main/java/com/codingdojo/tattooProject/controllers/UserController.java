package com.codingdojo.tattooProject.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.tattooProject.models.User;
import com.codingdojo.tattooProject.models.UserLogin;
import com.codingdojo.tattooProject.models.UserTattoo;
import com.codingdojo.tattooProject.services.HomeService;


@Controller
public class UserController {
	
	@Autowired
	HomeService homeServ;
	
	@GetMapping("/userLogin")
	public String userLogin(Model model) {
		model.addAttribute("newUserLogin", new UserLogin());
		return "UserLogin.jsp";
	}
	
    @PostMapping("/userLogin")
    public String login(@Valid @ModelAttribute("newLogin") UserLogin newUserLogin, 
            BindingResult result, Model model, HttpSession session) {
        User user = homeServ.loginUser(newUserLogin, result);
        if(result.hasErrors()) {
            model.addAttribute("newUserLogin", new UserLogin());
            return "UserLogin.jsp";
        }
        session.setAttribute("user_id", user.getId());
        session.setAttribute("firstName", user.getFirstName());
        return "redirect:/dashboard";
    }
	
	@GetMapping("/userRegistration")
	public String userRegistration(Model model) {
		model.addAttribute("newUser", new User());
		return "UserRegistration.jsp";
		
	}
	
	@PostMapping("/userRegistration")
	  public String register(@Valid @ModelAttribute("newUser") User newUser, 
	            BindingResult result, Model model, HttpSession session) {
	        homeServ.registerUser(newUser, result);
	        if(result.hasErrors()) {
	            model.addAttribute("newUser", new User());
	            return "UserRegistration.jsp";
	        }
	        session.setAttribute("user_id", newUser.getId());
	        session.setAttribute("firstName", newUser.getFirstName());
	        return "redirect:/dashboard";
	    }
	
	@GetMapping("/newTattoo")
	public String newTattoo(Model model) {
		model.addAttribute("newTattoo", new UserTattoo());
		return "NewTattoo.jsp";
		
	}
	
	@PostMapping("/newTattoo")
	  public String createTattoo(@Valid @ModelAttribute("newTattoo") UserTattoo newTattoo, 
	            BindingResult result, Model model, HttpSession session) {
	        homeServ.saveTattoo(newTattoo);
	        if(result.hasErrors()) {
	            model.addAttribute("newTattoo", new UserTattoo());
	            return "NewTattoo.jsp";
	        }
	        session.setAttribute("user_id", newTattoo.getId());
	        session.setAttribute("style", newTattoo.getStyle());
	        return "redirect:/dashboard";
	    }
}