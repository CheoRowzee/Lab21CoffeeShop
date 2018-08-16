package com.lab21.Lab21CoffeeShop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShopController {
	
	@RequestMapping("/coffee")
	public ModelAndView homePage()  {
		return new ModelAndView("lab", "test1", "Home!");
	}
	
	@RequestMapping("/form")
	public ModelAndView formPage()  {
		return new ModelAndView("form", "register", "Registration");
	}
	
	@RequestMapping("/summary")
	public ModelAndView sumPage()  {
		return new ModelAndView("summary", "actions", "name");
	}

}
