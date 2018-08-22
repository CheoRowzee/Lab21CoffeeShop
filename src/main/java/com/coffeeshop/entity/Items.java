package com.coffeeshop.entity;

public class Items {
	
	private String itemID;
	private String name;
	private String description;
	private String quanity;
	private double price;
	
	
	public Items()  {
		itemID= "";
		name = "";
		description = "";
		quanity = "";
		price = 0;
	}
	
	public Items(String itemID, String name, String description, String quanity, double price) {
		
		this.itemID = itemID;
		this.name = name;
		this.description = description;
		this.quanity = quanity;
		this.price = price;
	}
	
	public String getItemID()  {
		return itemID;
	}
	
	public void setItemID(String itemID)  {
		this.itemID = itemID;
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getQuanity() {
		return quanity;
	}

	public void setQuanity(String quanity) {
		this.quanity = quanity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Items [itemID=" + itemID + ", name=" + name + ", description=" + description + ", quanity=" + quanity
				+ ", price=" + price + "]";
	}

	
	
	

}
