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
	
	@RequestMapping("test")  
	public ModelAndView index()  {
		return new ModelAndView("index", "items", dao2.findAll());
	}
	
	@RequestMapping("/userIn")  
	public ModelAndView addNew(@RequestParam("firstName") String fname, @RequestParam("lastName") String lname, 
			@RequestParam("email") String email, 
			@RequestParam("phone") String phone, 
			@RequestParam("password") String pass) {
		dao.insertUser(fname, lname, email, phone, pass);
		return new ModelAndView("form", "user", dao.findAll());
	} 
	
	@RequestMapping("delete")
	public ModelAndView deleteCust(@RequestParam("id") String userID)  {
	dao.deleteUser(userID);
	return new ModelAndView("index", "user", dao.findAll());
	}
}


