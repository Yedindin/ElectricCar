package com.db.eccar.controller;

import java.text.DateFormat;

import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.db.eccar.service.SearchService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/result")
public class ResultController {
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView readSearch(ModelAndView mv) {
		mv.addObject("result", searchService.readSearch());
		System.out.println(mv);
		mv.setViewName("result");
		return mv;
	}
	
}
