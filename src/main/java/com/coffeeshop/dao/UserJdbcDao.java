package com.coffeeshop.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coffeeshop.entity.User;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;


@Repository
public class UserJdbcDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;


public List<User> findAll(){
	return jdbcTemplate.query("select * from User", new BeanPropertyRowMapper<User>(User.class));		
}

public int insertUser(String userID, String name, String email, int age)  {
	String insertQuery = "INSERT into user(userID, userName, userAge, userEmail) + values(?,?,?)";
	return jdbcTemplate.update(insertQuery, userID, name, age, email);
}
public int updateUser(String id, String name, String email, int age)  {	
	String updateQuery = "UPDATE users set name=? where id= ?";
	return jdbcTemplate.update(updateQuery, id, name, age, email);		
}

public int deleteUser(String id) {
	String deleteQuery = "delete from users where id = ?";
	return jdbcTemplate.update(deleteQuery, id);
	
}


}