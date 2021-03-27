package com.clothmart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.clothmart.model.Feedback;
import com.clothmart.model.Login;
import com.clothmart.model.Product;
import com.clothmart.model.Subcategory;
import com.clothmart.model.User;
import com.clothmart.service.FeedbackService;
import com.clothmart.service.LoginService;
import com.clothmart.service.ProductService;
import com.clothmart.service.SubcategoryService;
import com.clothmart.service.UserService;

@Controller
public class UserClothMartController {

	@Autowired
	private UserService userService;

	@Autowired
	private LoginService loginService;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Autowired
	private SubcategoryService subcategoryService;

	@Autowired
	private ProductService productService;

	@Autowired
	private FeedbackService feedbackService;

	@GetMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("register", "form-data", new User());
	}

	@PostMapping("/saveUser")
	public ModelAndView saveUser(@ModelAttribute User user) {
		Login login = user.getLogin();
		login.setPassword(this.passwordEncoder.encode(login.getPassword()));
		login.setRole("ROLE_USER");
		this.loginService.insert(login);
		this.userService.insert(user);
		return new ModelAndView("redirect:/");
	}

	@GetMapping({ "/", "", "/index" })
	public ModelAndView index() {

		List<Subcategory> subcategoryList = this.subcategoryService.getSubcategoryList();
		List<Product> productsList = this.productService.getProducts();
		return new ModelAndView("user/index").addObject("subcategoryList", subcategoryList)
				.addObject("productsList", productsList).addObject("subcategoryList", subcategoryList)
				.addObject("subcategoryName", "All Products").addObject("subcategoryDescription", "All Products List");
	}

	@GetMapping("/login")
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		if (error != null) {
			return new ModelAndView("login", "error", "Invalid Credentials provided.");
		}

		if (logout != null) {
			return new ModelAndView("login", "message", "Logged out from ClothMart successfully.");
		}
		return new ModelAndView("login");
	}

	@GetMapping("/checkEmailAlreadyExists")
	public void checkEmailAlreadyExists(@RequestParam("email") String email, HttpServletResponse response)
			throws IOException {
		boolean isExists = this.userService.checkEmailAlreadyExists(email, "ROLE_USER");
		PrintWriter out = response.getWriter();
		if (isExists) {
			out.println("The Entered Email Already Exists!!");
		}
	}

	@GetMapping("/checkEmailExistsOrNot")
	public void checkEmailExistsOrNot(@RequestParam("email") String email, HttpServletResponse response)
			throws IOException {
		boolean isExists = this.userService.checkEmailAlreadyExists(email, "ROLE_USER");// returns true if email already
																						// exists
		PrintWriter out = response.getWriter();
		if (!isExists) {
			out.println(
					"This email address is not regsitered with us. Kindly create new account or enter valid email address.");
		}

	}

	@GetMapping("/forgot-password")
	public ModelAndView forgotPassword() {
		return new ModelAndView("forgot-password");
	}

	@PostMapping("/sendOTP")
	public ModelAndView verifyOTP(@RequestParam("email") String email, HttpSession session) throws Exception {
		Random random = new Random();
		int otp = random.nextInt(999999);

		String from = "contact.clothmart@gmail.com";
		String to = email;
		String subject = "Forgot password OTP | ClothMart";
		String message = "Your OTP is " + otp + ". Kindly enter this OTP to reset your password.\n\n\n Yours Sincerely,"
				+ "\r\n" + "ClothMart Team.";
		this.userService.sendMail(from, to, subject, message);
		session.setAttribute("otp", otp);
		session.setAttribute("email", email);
		return new ModelAndView("verifyOTP");
	}

	@PostMapping("/verifyOTP")
	public ModelAndView verifyOTP(@RequestParam("otp") int otpEntered, HttpSession session) {

		int otpOriginal = (int) session.getAttribute("otp");
		if (otpOriginal == otpEntered) {
			return new ModelAndView("newPassword");
		} else {
			return new ModelAndView("verifyOTP", "errorMessage",
					"The OTP that you entered is not correct. Please try again!!");
		}
	}

	@GetMapping("/newPassword")
	public ModelAndView newPassword() {
		return new ModelAndView("newPassword");
	}

	@PostMapping("/saveNewPassword")
	public ModelAndView saveNewPassword(@RequestParam("password") String password, @ModelAttribute Login login,
			HttpSession session) {
		String email = (String) session.getAttribute("email");
		login.setEmail(email);
		login.setPassword(this.passwordEncoder.encode(password));
		this.loginService.updatePassword(login);
		return new ModelAndView("redirect:/login", "passwordUpdated", "true");
	}

	@GetMapping("/shirt")
	public ModelAndView shirt() {
		return new ModelAndView("user/shirt");
	}

	@GetMapping("/howitwork")
	public ModelAndView howitwork() {
		return new ModelAndView("user/howitwork");
	}

	@GetMapping("/contactus")
	public ModelAndView contactus() {
		return new ModelAndView("user/contactus");
	}

	@GetMapping("/aboutus")
	public ModelAndView aboutus() {
		return new ModelAndView("user/aboutus");
	}

	@GetMapping("/404")
	public ModelAndView Error404() {
		return new ModelAndView("user/404");
	}

	@GetMapping("/comingsoon")
	public ModelAndView comingsoon() {
		return new ModelAndView("user/comingsoon");
	}

	@GetMapping("/blogdetail")
	public ModelAndView blogdetail() {
		return new ModelAndView("user/blogdetail");
	}

	@GetMapping("/getProduct")
	public ModelAndView getProduct(@RequestParam("sid") Long sid, @ModelAttribute Subcategory subcategory) {
		subcategory.setSid(sid);
		List<Subcategory> subcategoryList = subcategoryService.getSubcategoryList();
		List<Product> productsList = productService.getProductBySubcategory(subcategory);
		return new ModelAndView("user/index", "productsList", productsList)
				.addObject("subcategoryList", subcategoryList)
				.addObject("subcategoryName", this.subcategoryService.findBySid(sid).getName())
				.addObject("subcategoryDescription", this.subcategoryService.findBySid(sid).getDescription())
				.addObject("subcategoryId", sid);
	}

	@GetMapping("/getAllProducts")
	public ModelAndView getAllProducts() {

		List<Subcategory> subcategoryList = subcategoryService.getSubcategoryList();
		List<Product> productsList = productService.getAllProductsList();
		return new ModelAndView("user/index", "productsList", productsList)
				.addObject("subcategoryList", subcategoryList).addObject("subcategoryName", "All Products")
				.addObject("subcategoryDescription", "All Products List");

	}

	@GetMapping("/productdetail")
	public ModelAndView productdetail(@RequestParam("pid") Long pid, @ModelAttribute Product product) {
		product.setPid(pid);
		Product selectedProduct = this.productService.getProduct(product);
		List<Feedback> feedbackList = this.feedbackService.getFeedback(product);
		return new ModelAndView("user/productdetail").addObject("selectedProduct", selectedProduct)
				.addObject("feedbackList", feedbackList);
	}

	@PostMapping("/saveFeedback")
	public ModelAndView saveFeedback(@RequestParam("rating") Integer rating,
			@RequestParam("feedback") String userFeedback) {
		Feedback feedback = new Feedback();
		feedback.setFeedback(userFeedback);
		System.out.println(feedback);
		return new ModelAndView();
	}

	@GetMapping("/checkout")
	public ModelAndView checkout(HttpSession session) {
		Login login = (Login) session.getAttribute("loggedIn");

		if (login == null) {
			session.setAttribute("invalidMsg", "Please Login to continue!!!");
			return new ModelAndView("redirect:/login");
		} else {
			User user = userService.getUserByLogin(login);
			return new ModelAndView("user/checkout", "userData", user);
		}
	}
}
