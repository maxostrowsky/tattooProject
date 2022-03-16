package com.codingdojo.tattooProject.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.tattooProject.models.Artist;
import com.codingdojo.tattooProject.models.ArtistLogin;
import com.codingdojo.tattooProject.models.Style;
import com.codingdojo.tattooProject.models.Shop;
import com.codingdojo.tattooProject.services.HomeService;



@Controller
public class ArtistController {
	
	@Autowired
	HomeService homeServ;
	
	@GetMapping("/artistLogin")
	public String artistLogin(Model model) {
		model.addAttribute("newArtistLogin", new ArtistLogin());
		return "ArtistLogin.jsp";
	}
	
    @PostMapping("/artistLogin")
    public String loginArtist(@Valid @ModelAttribute("newArtistLogin")ArtistLogin newArtistLogin, 
            BindingResult result, Model model, HttpSession session) {
    	Artist artist = homeServ.loginArtist(newArtistLogin, result);
        if(result.hasErrors()) {
            model.addAttribute("newArtistLogin", new ArtistLogin());
            return "ArtistLogin.jsp";
        }else {
        session.setAttribute("artist_id", artist.getId());
        session.setAttribute("firstName", artist.getFirstName());
        session.setAttribute("lastName", artist.getLastName());
        session.setAttribute("phoneNumber", artist.getPhoneNumber());
        session.setAttribute("shop", artist.getShop());
        return "redirect:/profilePage";
        }
    }
    
	@GetMapping("/artistRegistration")
	public String artistRegistration(Model model) {
		model.addAttribute("newArtist", new Artist());
		return "ArtistRegistration.jsp";
		
	}
	
	@PostMapping("/artistRegistration")
	  public String registerArtist(@Valid @ModelAttribute("newArtist") Artist newArtist, 
	            BindingResult result, Model model, HttpSession session) {
	        homeServ.registerArtist(newArtist, result);
	        if(result.hasErrors()) {
	            model.addAttribute("newArtist", new Artist());
	            return "ArtistRegistration.jsp";
	        }
	        session.setAttribute("artist_id", newArtist.getId());
	        return "redirect:/shopInfo";
	    }
	
	@GetMapping("/shopInfo")
	public String artistInfo(Model model) {
		model.addAttribute("newShop", new Shop());
		return "ShopInfo.jsp";
	}
		
	
	@PostMapping("/shopInfo")
	public String registerArtistInfo(@Valid @ModelAttribute("newShop") Shop newShop, 
	       BindingResult result, Model model, HttpSession session) {
		homeServ.registerShop(newShop, result);
	    if(result.hasErrors()) {
	        model.addAttribute("newShop", new Shop());
	        return "ShopInfo.jsp";
	       }
	       session.setAttribute("shop_id", newShop.getId());
	       return "redirect:/artistStyle";
	}
	
	@GetMapping("/artistStyle")
	public String artistStyle(Model model) {
		model.addAttribute("newStyle", new Style());
		return "ArtistStyle.jsp";
	}
	
	@PostMapping("/artistStyle")
	public String registerStyle(@Valid @ModelAttribute("newStyle") Style newStyle, 
	       BindingResult result, Model model, HttpSession session) {
		homeServ.saveStyle(newStyle);
	    if(result.hasErrors()) {
	        model.addAttribute("newStyle", new Style());
	        return "ArtistStyle.jsp";
	       }
	       session.setAttribute("style_id", newStyle.getId());
	       return "redirect:/profilePage";
	}
	
	@GetMapping("/profilePage")
	public String profilePage(String email, Model model, HttpSession session) {
		if(session.getAttribute("artist_id")==null) {
			return"redirect:/artistStyle";
		}
		System.out.println(email);
		Artist artist = homeServ.oneArtist(email);
		model.addAttribute("artist", artist);
		return "ProfilePage.jsp";
	}
	
}