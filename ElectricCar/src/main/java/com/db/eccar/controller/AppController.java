package com.db.eccar.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.db.eccar.service.AppInfoService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/app")
public class AppController {
	
	
	@Autowired
	AppInfoService appInfoService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView readAppInfo(ModelAndView mv) {
		mv.addObject("app", appInfoService.readApp());
		//System.out.println(mv);
		mv.setViewName("app");
		return mv;
	}
	
}
