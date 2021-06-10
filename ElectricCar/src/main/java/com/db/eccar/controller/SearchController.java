package com.db.eccar.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.db.eccar.service.EcCarService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/search")
public class SearchController {
	
	@Autowired
	EcCarService EcCarService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView readSearch(ModelAndView mv) {
		mv.addObject("brand", EcCarService.readBrand());
		mv.setViewName("search");
		return mv;
	}
	
}
