package com.db.eccar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.db.eccar.model.StationDTO;
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
		//System.out.println("no mapping 충전소 검색 결과: " + mv);		
		mv.setViewName("charger");
		return mv;
	}


	@RequestMapping(value = "/sigoongooContent", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView readSigoongoo(ModelAndView mv, @RequestParam(value = "id", defaultValue = "") int id) {
		mv.addObject("sigoongoo", ChargerService.readSiggongoo(id));
		System.out.println("받아오는 id" + id);
		System.out.println("시군구 id" + mv);
		//System.out.println("sigoongooContent 충전소 검색 결과: " + mv);				
		mv.setViewName("ajaxContent/sigoongooContent");
		return mv;	
	}

	@RequestMapping(value = "/chargerContent", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView readCharger(ModelAndView mv,
			@RequestParam(value = "special_do_id", defaultValue = "") int special_do_id,											
			@RequestParam(value = "sigoongoo_id", defaultValue = "") int sigoongoo_id) {
		
		List<StationDTO> result = ChargerService.readCharger(sigoongoo_id);
		mv.addObject("charger", ChargerService.readCharger(sigoongoo_id));
	
		if(ChargerService.readCharger(sigoongoo_id) == null) mv.addObject("resultYN", 0);

		if(result.isEmpty()) { //리스트에 값이 존재하지 않을 경우 출력
			System.out.println("controller: charger list is empty"); 
			mv.addObject("resultYN", 0);
		}	
		
		mv.setViewName("ajaxContent/chargerContent");
		return mv;	
	}
}
