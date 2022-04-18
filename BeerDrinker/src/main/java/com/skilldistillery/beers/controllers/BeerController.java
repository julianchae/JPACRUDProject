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

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		
		List<Beer> beers = dao.listAll();
		model.addAttribute("beers", beers);
		
		

		return "home";

	}

	@RequestMapping(path = "getBeer.do")
	public String findById(Integer id, Model model) {
		Beer beer = dao.findbyId(id);
		model.addAttribute("beer", beer);
		return "resultid"; 
	}

	@RequestMapping(path = "getBeerByName.do")
	public ModelAndView findByName(String name) {
		ModelAndView mv = new ModelAndView();
		if(name.equals("")) {
			mv.setViewName("emptyfield");
		}
		
		else {
		
		Beer beer = dao.findByName(name);
		mv.addObject("beer", beer);
		mv.setViewName("resultname");
		}
		return mv;

	}

	@RequestMapping(path = "getBeerByType.do")
	public ModelAndView findByType(String type) {
		ModelAndView mv = new ModelAndView();
		if(type.equals("")) {
			mv.setViewName("emptyfield");
		}
		
		else {
		List<Beer> beers = dao.findByType(type);
		mv.addObject("beers", beers);
		mv.setViewName("beersbytype");
		}
		return mv;

	}

	@RequestMapping(path = "addBeer.do", method = RequestMethod.POST)
	public ModelAndView addBeer(Beer beer,
			RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
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

	@RequestMapping(path = { "addbeer.do" })
	public String toAddForm(Model model) {

		return "addbeer";

	}
	@RequestMapping(path = { "deletebeer.do"  }) //home to beer form
	public String toDeleteForm(Model model) {
		
		List<Beer> beers = dao.listAll();
		model.addAttribute("beers", beers);
		return "deletebeerform";
	}

	@RequestMapping(path = "deleteBeerController.do", method = RequestMethod.GET)
	public ModelAndView deleteBeer(Integer id, RedirectAttributes redir) {
		System.out.println(id);
		ModelAndView mv = new ModelAndView();
		Beer beer = dao.deleteBeer(id);
		

		redir.addFlashAttribute("beer", beer);

		mv.setViewName("redirect:beerDeleted.do");

		return mv;
	}

	@RequestMapping("beerDeleted.do")
	public ModelAndView beerDeleted() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("deletedBeer");
		return mv;
	
	}

	@RequestMapping(path = { "updatebeercontroller.do"  }) //home to beer form
	public String toUpdateForm(Model model, Integer id) {
		
		Beer beer = dao.findbyId(id);
		model.addAttribute("beer", beer);
		return "updateform";
	}

	
	@RequestMapping(path = "updateBeer.do", method = RequestMethod.POST)
	public ModelAndView updateBeer(int id, Beer beer, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		
		beer = dao.updateBeer(id, beer);
		
		redir.addFlashAttribute("beer", beer);

		mv.setViewName("redirect:updatedBeer.do");
		
		return mv;
		
	}
	
	
	@RequestMapping("updatedBeer.do")
	public ModelAndView beerUpdated() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatedbeer");
		return mv;
	
	}
	
}
