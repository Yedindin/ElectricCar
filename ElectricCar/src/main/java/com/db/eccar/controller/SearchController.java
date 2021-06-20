package com.db.eccar.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.db.eccar.model.SearchDTO;
import com.db.eccar.service.ChargerService;
import com.db.eccar.service.EcCarService;
import com.db.eccar.service.SearchService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/search", method = RequestMethod.POST)
public class SearchController {
	
	@Autowired
	EcCarService EcCarService;
	@Autowired
	ChargerService ChargerService;
	@Autowired
	SearchService searchService;
	
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
	
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public ModelAndView readResult(ModelAndView mv,
			@RequestParam(value = "brand_first", defaultValue = "") int brand_first_id,
			@RequestParam(value = "brand_second", defaultValue = "") int brand_second_id,
			@RequestParam(value = "carType", defaultValue = "") int carType,
			@RequestParam(value = "maxprice", defaultValue = "") int maxprice,
			@RequestParam(value = "minprice", defaultValue = "") int minprice,
			@RequestParam(value = "subsidy_yn", defaultValue = "") String subsidy_yn,
			@RequestParam(value = "input_sigoongoo_id", defaultValue = "") int input_sigoongoo_id) {
		
		List<SearchDTO> result = searchService.readSearch(brand_first_id, brand_second_id, carType, maxprice, minprice, subsidy_yn, input_sigoongoo_id);
		mv.addObject("result", result);

		System.out.println("brand_first: " + brand_first_id);
		System.out.println("brand_second: " + brand_second_id);
		System.out.println("carType: " + carType);		
		System.out.println("maxprice: " + maxprice);
		System.out.println("minprice: " + minprice);
		System.out.println("subsidy_yn: " + subsidy_yn);
		System.out.println("input_sigoongoo_id: " + input_sigoongoo_id);
		System.out.println(mv);
		
		if(result.isEmpty()) { //리스트에 값이 존재하지 않을 경우 출력
			System.out.println("controller: search list is empty"); 
			mv.addObject("resultYN", 0);
		}		
		
		mv.setViewName("ajaxContent/resultContent");
		return mv;
	}
}
