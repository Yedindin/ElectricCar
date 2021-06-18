package com.db.eccar.controller;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.db.eccar.model.RecomInfoDTO;
import com.db.eccar.service.RecomInfoService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/recomInfoAdmin")
public class RecomInfoAdminController {
	
	@Autowired
	RecomInfoService recomInfoService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView readRecomInfo(ModelAndView mv) {
		mv.addObject("recomInfo", recomInfoService.readRecomInfo());
		mv.addObject("readCategory", recomInfoService.readCategory());
		//System.out.println(mv);
		mv.setViewName("recomInfoAdmin");
		return mv;
	}
	
	@RequestMapping(value = "/edit/{post_id}", method = RequestMethod.GET)
	public ModelAndView editRecomInfo(ModelAndView mv, @PathVariable("post_id") int post_id) {
		mv.addObject("post", recomInfoService.readPost(post_id));
		mv.addObject("readCategory", recomInfoService.readCategory());
		System.out.println(post_id);
		//System.out.println(mv);
		mv.setViewName("recomInfoedit");
		return mv;
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOK(RecomInfoDTO dto) {
//
//		String title = request.getParameter("title");
//		String url = request.getParameter("url");
//		String content = request.getParameter("content");
//		int post_id = Integer.parseInt(request.getParameter("post_id"));
//		int category_id = Integer.parseInt(request.getParameter("category_id"));
//		
//		RecomInfoDTO dto = new RecomInfoDTO();
//		dto.setPost_id(post_id);
//		dto.setCategory_id(category_id);
//		dto.setTitle(title);
//		dto.setUrl(url);
//		dto.setContent(content);
		
		recomInfoService.updatePost(dto);

		return "redirect:../recomInfoAdmin";

	}
	@RequestMapping(value="/deleteok/{post_id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("post_id") int post_id) {
		
		recomInfoService.deletePost(post_id);

		return "redirect:../../recomInfoAdmin";
	}
	
	
	
	
}
