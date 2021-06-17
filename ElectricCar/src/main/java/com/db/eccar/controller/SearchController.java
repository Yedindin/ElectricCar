package com.db.eccar.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.db.eccar.service.ChargerService;
import com.db.eccar.service.EcCarService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/search")
public class SearchController {
	
	@Autowired
	EcCarService EcCarService;
	@Autowired
	ChargerService ChargerService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView readSearch(ModelAndView mv) {
		mv.addObject("brand", EcCarService.readBrand());
		mv.addObject("address", ChargerService.readAddress());
		mv.setViewName("search");
		return mv;
	}
	
	@RequestMapping(value = "/sigoongooContent", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView readSigoongoo(ModelAndView mv, @RequestParam(value = "id", defaultValue = "") int id) {
		mv.addObject("sigoongoo", ChargerService.readSiggongoo(id));
		System.out.println("받아오는 id" + id);
		mv.setViewName("ajaxContent/sigoongooContent");
		return mv;	
	}
}
