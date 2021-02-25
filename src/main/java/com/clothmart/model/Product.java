package com.clothmart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;


@Entity
@Table(name = "Product")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "pid")
	private Long pid;

	@Column(name = "name")
	private String name;

	@Column(name = "description", length = 5000)
	private String description;

	@Column(name = "quantity")
	private Integer quantity;

	@Column(name = "price")
	private Long price;

	@Column(name = "imageUrl")
	private String imageUrl;

	@Column(name = "imageFileName")
	private String imageFileName;

	@ManyToOne
	@JoinColumn(name = "product_retailer_id")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Retailer retailer;

	@ManyToOne
	@JoinColumn(name = "product_category_id")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Category category;

	@ManyToOne
	@JoinColumn(name = "product_subcategory_id")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Subcategory subcategory;

	public Long getPid() {
		return pid;
	}

	public void setPid(Long pid) {
		this.pid = pid;
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

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public Retailer getRetailer() {
		return retailer;
	}

	public void setRetailer(Retailer retailer) {
		this.retailer = retailer;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Subcategory getSubcategory() {
		return subcategory;
	}

	public void setSubcategory(Subcategory subcategory) {
		this.subcategory = subcategory;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", name=" + name + ", description=" + description + ", quantity=" + quantity
				+ ", price=" + price + ", imageUrl=" + imageUrl + ", imageFileName=" + imageFileName + ", retailer="
				+ retailer + ", category=" + category + ", subcategory=" + subcategory + "]";
	}

	
	
}
