package com.db.eccar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.db.eccar.service.SearchService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/result", method = RequestMethod.POST)
public class ResultController {
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView readSearch(ModelAndView mv) {
		//mv.addObject("result", searchService.readSearch());
		System.out.println(mv);
		mv.setViewName("result");
		return mv;
	}

	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public ModelAndView readResult(ModelAndView mv,
			@RequestParam(value = "brand", defaultValue = "") String brand,
			@RequestParam(value = "price", defaultValue = "") int price,
			@RequestParam(value = "subsidy_yn", defaultValue = "") String subsidy_yn,
			@RequestParam(value = "input_sigoongoo_id", defaultValue = "") int input_sigoongoo_id,
			@RequestParam(value = "amount", defaultValue = "") int amount
			) {
		//mv.addObject("result", searchService.readSearch());
//		System.out.println(mv);
//		System.out.println("brand: " + brand);
//		System.out.println("price: " + price);
//		System.out.println("subsidy_yn: " + subsidy_yn);
//		System.out.println("input_sigoongoo_id: " + input_sigoongoo_id);
//		System.out.println("amount: " + amount);


		mv.setViewName("ajaxContent/resultContent");
		return mv;
	}
	
}
