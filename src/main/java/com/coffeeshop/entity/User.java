package com.coffeeshop.entity;

public class User {
	
	private String name;
	private String email;
	private String userID;
	private int age;
	
	
	public User()  {
		userID= "";
		name = "";
		age = 0;
		email = "";
		
	}
	
	
	public User(String userID, String name, String email, int age) {
		this.userID = userID;
		this.name = name;
		this.age = age;
		this.email = email;
	}
	
	public String getUserID() {
		return userID;
	}
	
	public void setUserID(String userID)  {
		this.userID = userID;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}
	
	public String getEmail() {
		return email;
			}
	
	public void setEmail(String email)  {
		this.email = email;
		
	}


	@Override
	public String toString() {
		return "User [name=" + name + ", email=" + email + ", userID=" + userID + ", age=" + age + "]";
	}


	
 

}
