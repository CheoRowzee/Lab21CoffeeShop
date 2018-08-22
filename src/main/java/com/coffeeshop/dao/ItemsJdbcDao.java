package com.coffeeshop.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.coffeeshop.entity.Items;
@Repository
public class ItemsJdbcDao {	

		@Autowired
		JdbcTemplate jdbcTemplate;		
		
		public List<Items> findAll() {
			return jdbcTemplate.query("select * from items", new BeanPropertyRowMapper<Items>(Items.class));
		}
		
		public int insertCustomer(String itemID, String name, String description, String quanity, double price) {
		String insertQuery = "INSERT INTO items(itemID, name, description, quanity, price)"
		+ " values(?,?,?,?,?)";
				return jdbcTemplate.update(insertQuery, itemID, name, description, quanity, price);
		}
		
		public int updateCustomer(String itemID, String name)  {
			
			String updateQuery = "UPDATE items set name=? where itemid = ?";
			return jdbcTemplate.update(updateQuery, itemID, name);		
		}
		

	}

