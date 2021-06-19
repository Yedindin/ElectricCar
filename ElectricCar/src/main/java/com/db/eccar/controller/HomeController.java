package com.db.eccar.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
//		System.out.println(sqlSession);
		
//		System.out.println(sqlSession.selectList("Post.readAll"));
//		System.out.println(sqlSession.selectList("Post.readRecomInfo"));

		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/CreatorInfo", method = RequestMethod.GET)
	public ModelAndView readRecomInfo(ModelAndView mv) {
		
		mv.setViewName("AdminInfo");
		return mv;
	}
	
	@RequestMapping(value = "/Admin", method = RequestMethod.GET)
	public ModelAndView AdminLogin(ModelAndView mv) {
		
		mv.setViewName("AdminLogin");
		return mv;
	}
	@RequestMapping(value="/Admin/success", method = RequestMethod.GET)
	public String loginSuccess() {
		
		return "redirect:../recomInfoAdmin";
	}
	@RequestMapping(value="/Admin/fail", method = RequestMethod.GET)
	public String loginFail() {
		
		return "redirect:../Admin";
	}
	
}
