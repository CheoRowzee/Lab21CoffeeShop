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

	public List<User> findAll() {
		return jdbcTemplate.query("select * from Users", new BeanPropertyRowMapper<User>(User.class));
	}

	public int insertUser(String firstName, String lastName, String phone, String email, String password) {
		String insertQuery = "INSERT into users(firstName, lastName, phone,email, password) values(?,?,?,?,?)";
		return jdbcTemplate.update(insertQuery, firstName, lastName, phone, email, password);
	}

	public int updateUser(String id, String firstName, String lastName) {
		String updateQuery = "UPDATE users set name=? where id= ?";
		return jdbcTemplate.update(updateQuery, id, firstName, lastName);
	}

	public int deleteUser(String id) {
		String deleteQuery = "delete from users where idusers = ?";
		return jdbcTemplate.update(deleteQuery, id);

	}

}