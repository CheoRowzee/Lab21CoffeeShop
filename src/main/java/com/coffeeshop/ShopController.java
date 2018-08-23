package com.coffeeshop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShopController {
	
//	@RequestMapping("/")
//	public ModelAndView homePage()  {
//		return new ModelAndView("lab", "test1", "Home");
//	}
	
	@RequestMapping("/form")
	public String formPage()  {
		return "form";
	}
	
	@RequestMapping("username")
	public ModelAndView sumPage(@RequestParam("birthdate") String birthday) {
		return new ModelAndView("summary", "personName", birthday);
	}
	

}
