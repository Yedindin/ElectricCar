package com.db.eccar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.db.eccar.service.ChargerService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/charger", method = RequestMethod.POST)
public class ChargerController {
	
	@Autowired
	ChargerService ChargerService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView readCharger(ModelAndView mv) {
		mv.addObject("charger", ChargerService.readCharger());
		mv.addObject("address", ChargerService.readAddress());
		System.out.println(mv);
		mv.setViewName("charger");
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
