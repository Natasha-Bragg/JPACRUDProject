package com.skilldistillery.jpacrud.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrud.data.AvengersDAO;
import com.skilldistillery.jpacrud.entities.Avengers;



@Controller
public class AvengersController {
	
	@Autowired
	private AvengersDAO avengersDao;
	
	
	
	@RequestMapping(path = "/")
	public String index() {
		return "index";
	}
	
	@RequestMapping(path="getAvenger.do")
	public String showAvenger(Integer aid, Model model) {
		Avengers avenger = avengersDao.findById(aid);
		model.addAttribute("avenger", avenger);
		return "showavenger/show";
	}
	@RequestMapping(path="createAvenger.do")
	public String createAvenger(Avengers avenge, Model model) {
		Avengers avenger = avengersDao.create(avenge);
		model.addAttribute("avenger", avenger);
		return "showavenger/show";
	}
	@RequestMapping(path="updateAvenger.do")
	public String updateAvenger(Avengers aven, Model model) {
		Avengers avenger = avengersDao.updateAvenger(aven);
		model.addAttribute("avenger", avenger);
		return "showavenger/show";
	}
	
		
	@RequestMapping(path="deleteAvenger.do")
	public String deleteAvenger(int id) {
		avengersDao.destroyAvenger(id);
		return "delete";
	}
	@RequestMapping(path = "avengerDeleted.do")
	public String deleted() {
		return "delete";
	}

}
