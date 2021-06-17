package com.db.eccar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.db.eccar.service.RecomInfoService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/recomInfo")
public class RecomInfoController {
	
	@Autowired
	RecomInfoService recomInfoService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView readRecomInfo(ModelAndView mv) {
		mv.addObject("recomInfo", recomInfoService.readRecomInfo());
		mv.addObject("readCategory", recomInfoService.readCategory());
		//System.out.println(mv);
		mv.setViewName("recomInfo");
		return mv;
	}
	
	
	
	
}
