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
		System.out.println("시군구 id" + mv);
		mv.setViewName("ajaxContent/sigoongooContent");
		return mv;	
	}

	@RequestMapping(value = "/chargerContent", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView readCharger(ModelAndView mv,
			@RequestParam(value = "special_do_id", defaultValue = "") int special_do_id,											
			@RequestParam(value = "sigoongoo_id", defaultValue = "") int sigoongoo_id) {
		//mv.addObject("charger", ChargerService.readSiggongoo(id));
		//System.out.println("special_do_id: " + special_do_id);
		//System.out.println("sigoongoo_id: " + sigoongoo_id);
		mv.addObject("charger", ChargerService.readCharger(sigoongoo_id));
		//System.out.println(mv);

		mv.setViewName("ajaxContent/chargerContent");
		return mv;	
	}
}
