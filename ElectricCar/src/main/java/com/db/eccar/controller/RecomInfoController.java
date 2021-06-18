package com.db.eccar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.db.eccar.model.RecomInfoDTO;
import com.db.eccar.service.RecomInfoService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/recomInfo", method = RequestMethod.POST)
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

	@RequestMapping(value = "/recomInfoContent", method = RequestMethod.GET)
	public ModelAndView readRecomInfoList(ModelAndView mv,
			@RequestParam(value = "category_id", defaultValue = "") int category_id,											
			@RequestParam(value = "title", defaultValue = "") String title,											
			@RequestParam(value = "url", defaultValue = "") String url,											
			@RequestParam(value = "content", defaultValue = "") String content									
			) {
		
		System.out.println("category_id: " + category_id);
		System.out.println("title: " + title);
		System.out.println("url: " + url);
		System.out.println("content: " + content);
		
		RecomInfoDTO info = new RecomInfoDTO();

		info.setCategory_id(category_id);
		info.setTitle(title);
		info.setUrl(url);
		info.setContent(content);

		info.toString();
		
		recomInfoService.createNewRecomInfo(info);
		
		mv.addObject("recomInfo", recomInfoService.readRecomInfo());

				
//		mv.addObject("recomInfo", recomInfoService.readRecomInfo());
//		mv.addObject("readCategory", recomInfoService.readCategory());
//		mv.addObject("createCategory", recomInfoService.createRecomInfo(category_id, title, url, content));
		
		//System.out.println(mv);

		mv.setViewName("ajaxContent/recomInfoContent");
		return mv;
	}
	
	
}
