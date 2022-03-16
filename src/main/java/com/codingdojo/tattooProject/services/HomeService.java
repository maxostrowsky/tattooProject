package com.codingdojo.tattooProject.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.codingdojo.tattooProject.models.Artist;
import com.codingdojo.tattooProject.models.ArtistLogin;
import com.codingdojo.tattooProject.models.Shop;
import com.codingdojo.tattooProject.models.Style;
import com.codingdojo.tattooProject.models.User;
import com.codingdojo.tattooProject.models.UserLogin;
import com.codingdojo.tattooProject.models.UserTattoo;
import com.codingdojo.tattooProject.repositories.ArtistRepository;
import com.codingdojo.tattooProject.repositories.ShopRepository;
import com.codingdojo.tattooProject.repositories.StyleRepository;
import com.codingdojo.tattooProject.repositories.UserRepository;
import com.codingdojo.tattooProject.repositories.UserTattooRepository;

@Service
public class HomeService {
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
	ArtistRepository artistRepo;
	
	@Autowired
	UserTattooRepository tattooRepo;
	
	@Autowired
	ShopRepository shopRepo;
	
	@Autowired
	StyleRepository styleRepo;
	
	//------------------USER---------------------
	
    public User registerUser(User newUser, BindingResult result) {
        if(userRepo.findByEmail(newUser.getEmail()).isPresent()) {
            result.rejectValue("email", "Unique", "This email is already in use!");
        }
        if(!newUser.getPassword().equals(newUser.getConfirm())) {
            result.rejectValue("confirm", "Matches", "The Confirm Password must match Password!");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
            newUser.setPassword(hashed);
            return userRepo.save(newUser);
        }
    }
    
    public User loginUser(UserLogin newLogin, BindingResult result) {
        if(result.hasErrors()) {
            return null;
        }
        Optional<User> potentialUser = userRepo.findByEmail(newLogin.getEmail());
        if(!potentialUser.isPresent()) {
            result.rejectValue("email", "Unique", "Unknown email!");
            return null;
        }
        User user = potentialUser.get();
        if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
            result.rejectValue("password", "Matches", "Invalid Password!");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            return user;
        }
    }
    
	public User saveUser(User user) {
		return userRepo.save(user);
	}
	
	//--------------------ARTIST----------------------------
	
    public Artist registerArtist(Artist newArtist, BindingResult result) {
        if(artistRepo.findByEmail(newArtist.getEmail()).isPresent()) {
            result.rejectValue("email", "Unique", "This email is already in use!");
        }
        if(!newArtist.getPassword().equals(newArtist.getConfirm())) {
            result.rejectValue("confirm", "Matches", "The Confirm Password must match Password!");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            String hashed = BCrypt.hashpw(newArtist.getPassword(), BCrypt.gensalt());
            newArtist.setPassword(hashed);
            return artistRepo.save(newArtist);
        }
    }
    
    public Artist loginArtist(ArtistLogin newArtistLogin, BindingResult result) {
        if(result.hasErrors()) {
            return null;
        }
        Optional<Artist> potentialArtist = artistRepo.findByEmail(newArtistLogin.getEmail());
        if(!potentialArtist.isPresent()) {
            result.rejectValue("email", "Unique", "Unknown email!");
            return null;
        }
        Artist artist = potentialArtist.get();
        if(!BCrypt.checkpw(newArtistLogin.getPassword(), artist.getPassword())) {
            result.rejectValue("password", "Matches", "Invalid Password!");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            return artist;
        }
    }
    public Artist saveArtist(Artist artist) {
		return artistRepo.save(artist);
	}
    
	public Artist oneArtist(Long id) {
		Optional<Artist> artists = artistRepo.findById(id);
		if(artists.isPresent()) {
			return artists.get();
		} else {
			return null;
		}
	}
	//--------------------TATTOO------------------
	
    public UserTattoo saveTattoo(UserTattoo newTattoo) {
			return tattooRepo.save(newTattoo);
	}
    //-----------------STYLE------------
    
    public Style saveStyle(Style newStyle) {
			return styleRepo.save(newStyle);
	}
    
    public Style registerStyle(Style newStyle, BindingResult result) {
        if(styleRepo.findByStyleName(newStyle.getStyleName()).isPresent()) {
            result.rejectValue("No Style Found!", "please find shop");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            return styleRepo.save(newStyle);
        }
    }
    
    //----------------SHOP-----------------------
    
    public Shop registerShop(Shop newShop, BindingResult result) {
        if(shopRepo.findByShopName(newShop.getShopName()).isPresent()) {
            result.rejectValue("No Shop Found!", "please find shop");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            return shopRepo.save(newShop);
        }
    }
    
	public Shop saveUser(Shop shop) {
		return shopRepo.save(shop);
	}
    
//    public Shop oneShop(Long id) {
//    	Optional<Shop> shops = shopRepo.findById(id);
//    	if(shops.isPresent()) {
//    		return shops.get();
//    	} else {
//    		return null;
//    	}
//    }
}
