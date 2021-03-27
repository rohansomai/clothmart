package com.clothmart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.clothmart.model.Category;
import com.clothmart.model.Complaint;
import com.clothmart.model.Feedback;
import com.clothmart.model.Login;
import com.clothmart.model.Product;
import com.clothmart.model.Retailer;
import com.clothmart.model.Subcategory;
import com.clothmart.model.User;
import com.clothmart.service.CategoryService;
import com.clothmart.service.ComplaintService;
import com.clothmart.service.FeedbackService;
import com.clothmart.service.LoginService;
import com.clothmart.service.ProductService;
import com.clothmart.service.RetailerService;
import com.clothmart.service.SubcategoryService;
import com.clothmart.service.UserService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

@Controller
@RequestMapping("/admin")
public class AdminClothMartController {

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private SubcategoryService subcategoryService;

	@Autowired
	private RetailerService retailerService;

	@Autowired
	private LoginService loginService;

	@Autowired
	private UserService userService;

	@Autowired
	private ComplaintService complaintService;

	@Autowired
	private FeedbackService feedbackService;

	@Autowired
	private ProductService productService;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@GetMapping({ "/", "" })
	public ModelAndView index() {

		System.out.println(this.loginService.getLoggedInUser());
		return new ModelAndView("admin/index");
	}

	@GetMapping("/addCategory")
	public ModelAndView addCategory() {
		return new ModelAndView("admin/addCategory", "categoryData", new Category());
	}

	@PostMapping("/saveCategory")
	public ModelAndView saveCategory(@ModelAttribute Category category) {
		this.categoryService.insert(category);
		return new ModelAndView("redirect:/admin/viewCategory");
	}

	@GetMapping("/viewCategory")
	public ModelAndView viewCategory() {
		List<Category> categoryList = this.categoryService.getCategoryList();
		System.out.println(categoryList);
		return new ModelAndView("admin/viewCategory", "categoryList", categoryList);
	}

	@GetMapping("/deleteCategory")
	public ModelAndView deleteCategory(@RequestParam("cid") Long cid, @ModelAttribute Category category) {
		category.setCid(cid);
		this.categoryService.deleteCategory(category);
		return new ModelAndView("redirect:/admin/viewCategory");
	}

	@GetMapping("/editCategory")
	public ModelAndView editCategory(@RequestParam("cid") Long cid, @ModelAttribute Category category) {
		category.setCid(cid);
		Category category2 = this.categoryService.getEditList(category);
		return new ModelAndView("admin/addCategory", "categoryData", category2);
	}

	@GetMapping("/addSubcategory")
	public ModelAndView addSubcategory() {
		List<Category> categoryList = this.categoryService.getCategoryList();
		return new ModelAndView("admin/addSubcategory", "subcategoryData", new Subcategory()).addObject("categoryList",
				categoryList);
	}

	@PostMapping("/saveSubcategory")
	public ModelAndView saveSubcategory(@ModelAttribute Subcategory subcategory) {
		this.subcategoryService.insert(subcategory);
		return new ModelAndView("redirect:/admin/viewSubcategory");
	}

	@GetMapping("/viewSubcategory")
	public ModelAndView viewSubcategory() {
		List<Subcategory> subcategoryList = this.subcategoryService.getSubcategoryList();
		return new ModelAndView("admin/viewSubcategory", "subcategoryList", subcategoryList);
	}

	@GetMapping("/editSubcategory")
	public ModelAndView editSubcategory(@RequestParam("sid") Long sid, @ModelAttribute Subcategory subcategory) {
		subcategory.setSid(sid);
		Subcategory editList = this.subcategoryService.getEditList(subcategory);
		List<Category> categoryList = this.categoryService.getCategoryList();
		return new ModelAndView("admin/addSubcategory", "subcategoryData", editList).addObject("categoryList",
				categoryList);
	}

	@GetMapping("/deleteSubcategory")
	public ModelAndView deleteSubcategory(@RequestParam("sid") Long sid, @ModelAttribute Subcategory subcategory) {
		subcategory.setSid(sid);
		this.subcategoryService.delete(subcategory);
		return new ModelAndView("redirect:/admin/viewSubcategory");
	}

	@GetMapping("/addRetailer")
	public ModelAndView addRetailer() {
		return new ModelAndView("admin/addRetailer", "form-data", new Retailer());
	}

	@PostMapping("/saveRetailer")
	public ModelAndView saveRetailer(@ModelAttribute Retailer retailer) {
		Login loginData = retailer.getLogin();// extracting login data from retailer i.e. email and password
		loginData.setPassword(this.passwordEncoder.encode(loginData.getPassword()));
		loginData.setRole("ROLE_RETAILER");
		this.loginService.insert(loginData);
		this.retailerService.insert(retailer);
		return new ModelAndView("redirect:/admin/viewRetailers");
	}

	@GetMapping("/viewRetailers")
	public ModelAndView viewRetailers() {
		List<Retailer> retailersList = this.retailerService.getRetailersList();
		return new ModelAndView("admin/viewRetailers", "retailersList", retailersList);
	}

	@GetMapping("/deleteRetailer")
	public ModelAndView deleteRetailer(@RequestParam("lid") Long loginId, @ModelAttribute Login login,
			@ModelAttribute Retailer retailer, @RequestParam("rid") Long registerId) {
		login.setId(loginId);
		this.loginService.delete(login);

		retailer.setId(registerId);
		this.retailerService.delete(retailer);
		return new ModelAndView("redirect:/admin/viewRetailers");
	}

	@GetMapping("/editRetailer")
	public ModelAndView editRetailery(@RequestParam("id") Long id, @ModelAttribute Retailer retailer) {
		retailer.setId(id);
		Retailer editList = this.retailerService.getEditList(retailer);
		return new ModelAndView("admin/addRetailer", "form-data", editList);
	}

	@GetMapping("/viewUsers")
	public ModelAndView viewUsers() {
		List<User> usersList = userService.getUsersList();
		return new ModelAndView("admin/viewUsers", "usersList", usersList);
	}

	@GetMapping("/deleteUser")
	public ModelAndView deleteUser(@ModelAttribute Login login, @ModelAttribute User user,
			@RequestParam("lid") Long loginId, @RequestParam("uid") Long userId) {
		login.setId(loginId);
		this.loginService.delete(login);
		user.setId(userId);
		this.userService.delete(user);
		return new ModelAndView("redirect:/admin/viewUsers");
	}

	@GetMapping("/viewComplaints")
	public ModelAndView viewComplaints() {
		List<Complaint> complaintsList = this.complaintService.getComplaints();
		return new ModelAndView("admin/viewComplaints", "complaintsList", complaintsList);
	}

	@GetMapping("/complaintReply")
	public ModelAndView complaintReply(@RequestParam("id") Long id, @ModelAttribute Complaint complaint) {
		complaint.setId(id);
		Complaint complaint2 = this.complaintService.getComplaint(complaint);
		return new ModelAndView("admin/complaintReply", "complaintData", complaint2);
	}

	@PostMapping("/saveReply")
	public ModelAndView saveReply(@ModelAttribute Complaint complaint) {
		this.complaintService.insert(complaint);
		return new ModelAndView("redirect:/admin/viewComplaints");
	}

	@GetMapping("/deleteComplaint")
	public ModelAndView deleteComplaint(@RequestParam("id") Long id, @ModelAttribute Complaint complaint) {
		complaint.setId(id);
		this.complaintService.delete(complaint);
		return new ModelAndView("redirect:/admin/viewComplaints");
	}

	@GetMapping("/viewFeedbacks")
	public ModelAndView viewFeedbacks() {
		List<Feedback> feedbacksList = this.feedbackService.getFeedbacks();
		System.out.println(feedbacksList);
		return new ModelAndView("admin/viewFeedbacks", "feedbacksList", feedbacksList);
	}

	@GetMapping("/deleteFeedback")
	public ModelAndView deleteFeedback(@RequestParam("id") Long id, @ModelAttribute Feedback feedback) {
		feedback.setId(id);
		this.feedbackService.delete(feedback);
		return new ModelAndView("redirect:/admin/viewFeedbacks");
	}

	@GetMapping("/viewProducts")
	public ModelAndView viewProducts() {
		List<Product> productsList = this.productService.getProducts();
		List<Retailer> retailersList = this.retailerService.getRetailersList();
		return new ModelAndView("admin/viewProducts", "productsList", productsList).addObject("retailersList",
				retailersList);
	}

	@GetMapping("/getProductsByRetailer")
	public void getProductsByRetailer(@RequestParam("id") Long retailerId, @ModelAttribute Retailer retailer,
			HttpServletResponse response) throws IOException {
		retailer.setId(retailerId);

		List<Product> productsList = this.productService.getProductsByRetailer(retailer);
		System.out.println(productsList);

		ObjectMapper mapper = new ObjectMapper();
		mapper.enable(SerializationFeature.INDENT_OUTPUT);
		String json = mapper.writeValueAsString(productsList);

		PrintWriter out = response.getWriter();
		out.println(json);

	}

	@GetMapping("/getAllProductsJSON")
	public void getAllProductsJSON(HttpServletResponse response) throws IOException {

		List<Product> productsList = this.productService.getProducts();

		ObjectMapper mapper = new ObjectMapper();
		mapper.enable(SerializationFeature.INDENT_OUTPUT);
		String json = mapper.writeValueAsString(productsList);

		PrintWriter out = response.getWriter();
		out.println(json);

	}

	@GetMapping("/checkEmailAlreadyExists")
	public void checkEmailAlreadyExists(@RequestParam("email") String email, HttpServletResponse response)
			throws IOException {
		boolean isExists = this.userService.checkEmailAlreadyExists(email, "ROLE_RETAILER");
		PrintWriter out = response.getWriter();
		if (isExists) {
			out.println("The Entered Email Already Exists!!");
		}
	}
}
