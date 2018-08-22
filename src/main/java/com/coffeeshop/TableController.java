package com.coffeeshop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.coffeeshop.dao.ItemsJdbcDao;
import com.coffeeshop.dao.UserJdbcDao;

@Controller
public class TableController {
	
	@Autowired
	UserJdbcDao dao;
	
	@Autowired
	ItemsJdbcDao dao2;
	
	@RequestMapping("")  
	public ModelAndView index()  {
		return new ModelAndView("index", "items", dao2.findAll());
	}
	
	@RequestMapping("/userIn")  
	public ModelAndView addNew(@RequestParam("id") String id, @RequestParam("name") String name, @RequestParam("email") String mail, @RequestParam("age") int age)  {
		dao.insertUser(id, name, mail, age);
		return new ModelAndView("form", "user", dao.findAll());
	} 
}

