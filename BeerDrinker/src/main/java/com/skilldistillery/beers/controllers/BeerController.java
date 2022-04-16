package com.skilldistillery.beers.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.beers.data.BeersDAO;

@Controller
public class BeerController {
	
	@Autowired
	private BeersDAO dao;
	
	
	@RequestMapping(path = {"/","home.do"})
	public String home(Model model) {
		model.addAttribute("DEBUG", dao.findbyId(1));
		return "home";
		
	}

}
