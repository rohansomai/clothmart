package com.clothmart.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.clothmart.model.Category;
import com.clothmart.model.Login;
import com.clothmart.model.Product;
import com.clothmart.model.Retailer;
import com.clothmart.model.Subcategory;
import com.clothmart.service.AmazonClient;
import com.clothmart.service.CategoryService;
import com.clothmart.service.ProductService;
import com.clothmart.service.RetailerService;
import com.clothmart.service.SubcategoryService;

@Controller
@RequestMapping("/retailer")
public class RetailerClothMartController {
	@Autowired
	private CategoryService categoryService;

	@Autowired
	private SubcategoryService subcategoryService;

	@Autowired
	private ProductService productService;

	@Autowired
	private AmazonClient amazonClient;

	@Autowired
	private RetailerService retailerService;

	@GetMapping({ "/", "" })
	public ModelAndView index() {
		return new ModelAndView("retailer/index");
	}

	@GetMapping("/addProduct")
	public ModelAndView addProduct(HttpSession session) {
		Login login = (Login) session.getAttribute("loggedIn");
		if (login != null) {
			List<Category> categoryList = categoryService.getCategoryList();
			List<Subcategory> subcategoryList = subcategoryService.getSubcategoryList();
			return new ModelAndView("retailer/addProduct", "productData", new Product())
					.addObject("categoryList", categoryList).addObject("subcategoryList", subcategoryList);
		} else
			return new ModelAndView("redirect:/login");
	}

	@PostMapping("/saveProduct")
	public ModelAndView saveProduct(@RequestPart(value = "file", required = false) MultipartFile file,
			@ModelAttribute Product product, HttpSession session) {

		String imageUrl = this.amazonClient.upload(file);
		System.out.println(imageUrl);
		Login login = (Login) session.getAttribute("loggedIn");
		Retailer retailer = this.retailerService.getRetailerByLogin(login);
		System.out.println(retailer);
		product.setImageUrl(imageUrl);
		product.setImageFileName("product-images/" + file.getOriginalFilename());

		product.setRetailer(retailer);
		this.productService.insert(product);
		return new ModelAndView("redirect:/retailer/viewProduct");

	}

	@PostMapping("/updateProduct")
	public ModelAndView updateProduct(@RequestPart(value = "file", required = false) MultipartFile file,
			@ModelAttribute Product product, HttpSession session) {

		Login login = (Login) session.getAttribute("loggedIn");
		if (login != null) {

			Retailer retailer = this.retailerService.getRetailerByLogin(login);

			product.setRetailer(retailer);
			this.productService.insert(product);// for updation
			return new ModelAndView("redirect:/retailer/viewProduct");

		} else
			return new ModelAndView("redirect:/login");

	}

	@GetMapping("/viewProduct")
	public ModelAndView viewProduct(HttpSession session) {
		Login login = (Login) session.getAttribute("loggedIn");
		if (login != null) {
			Retailer retailer = this.retailerService.getRetailerByLogin(login);
			List<Product> productsList = this.productService.getProductsByRetailer(retailer);
			return new ModelAndView("retailer/viewProduct", "productsList", productsList);
		} else
			return new ModelAndView("redirect:/login");
	}

	@GetMapping("/deleteProduct")
	public ModelAndView deleteProduct(@RequestParam("pid") Long pid, @ModelAttribute Product product) {

		product.setPid(pid);
		this.productService.delete(product);
		return new ModelAndView("redirect:/retailer/viewProduct");
	}

	@GetMapping("/editProduct")
	public ModelAndView editProduct(@RequestParam("pid") Long pid, @ModelAttribute Product product,
			HttpSession session) {
		Login login = (Login) session.getAttribute("loggedIn");
		if (login != null) {
			product.setPid(pid);
			Product editList = this.productService.getEditList(product);
			List<Category> categoryList = categoryService.getCategoryList();
			List<Subcategory> subcategoryList = subcategoryService.getSubcategoryList();
			return new ModelAndView("retailer/editProduct", "productData", editList)
					.addObject("categoryList", categoryList).addObject("subcategoryList", subcategoryList);
		} else
			return new ModelAndView("redirect:/login");
	}

	@PostMapping("/updateImage")
	public ModelAndView updateImage(@RequestPart(value = "file", required = true) MultipartFile file,
			@ModelAttribute Product product, HttpSession session, @RequestParam("pid") Long pid,
			HttpServletResponse response) throws IOException {
		Login login = (Login) session.getAttribute("loggedIn");
		if (login != null) {
			product.setPid(pid);
			this.productService.deleteImage(product);
			String imageUrl = this.amazonClient.upload(file);
			System.out.println(imageUrl);
			Retailer retailer = this.retailerService.getRetailerByLogin(login);
			product.setImageUrl(imageUrl);
			product.setImageFileName("product-images/" + file.getOriginalFilename());
			product.setRetailer(retailer);
			this.productService.insert(product);
			return new ModelAndView("redirect:/retailer/editProduct?pid=" + pid);
		} else
			return new ModelAndView("redirect:/login");

	}
}
