package com.skilldistillery.beers.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.beers.data.BeersDAO;
import com.skilldistillery.beers.entities.Beer;

@Controller
public class BeerController {
	
	@Autowired
	private BeersDAO dao;
	
	
	@RequestMapping(path = {"/","home.do"})
	public String home(Model model) {
		
		return "home";
		
	}
	@RequestMapping(path="getBeer.do")
	public String findById(Integer id, Model model) {
	Beer beer = dao.findbyId(id);
		model.addAttribute("beer", beer);
		return "result"; //show a beer jsp
	}
	
	@RequestMapping(path="getBeerByName.do")
	public ModelAndView findByName(String name) {
		ModelAndView mv = new ModelAndView();
		Beer beer = dao.findByName(name);
		mv.addObject("beer", beer);
		mv.setViewName("result");
		
		return mv;
		
	}
	@RequestMapping(path="getBeerByType.do")
	public ModelAndView findByType(String type) {
		ModelAndView mv = new ModelAndView();
		
		List<Beer> beers = dao.findByType(type);
		mv.addObject("beers", beers);
		mv.setViewName("beersbytype");
		
		return mv;
		
	}
	@RequestMapping(path="addBeer.do", method= RequestMethod.POST)
	public ModelAndView addBeer(String name, String description, double abv, int ibu, String type, RedirectAttributes redir ) {
		ModelAndView mv = new ModelAndView();
		Beer beer = new Beer();
		beer.setName(name);
		beer.setAbv(abv);
		beer.setDescription(description);
		beer.setIbu(ibu);
		beer.setType(type);
		
		dao.addBeer(beer);
		redir.addFlashAttribute("beer", beer);
		mv.setViewName("redirect:beerAdded.do");
		return mv;
		
		
	}
	@RequestMapping("beerAdded.do")
	public ModelAndView beerAdded() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result");
		return mv;
	}

	

}
