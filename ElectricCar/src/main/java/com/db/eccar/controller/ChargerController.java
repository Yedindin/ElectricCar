package com.db.eccar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.db.eccar.service.ChargerService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/charger")
public class ChargerController {
	
	@Autowired
	ChargerService ChargerService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView readCharger(ModelAndView mv) {
		mv.addObject("charger", ChargerService.readCharger());
		mv.addObject("address", ChargerService.readAddress());
		//System.out.println(mv);
		mv.setViewName("charger");
		return mv;
	}
}
