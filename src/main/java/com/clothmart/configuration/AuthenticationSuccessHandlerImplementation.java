package com.clothmart.configuration;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.clothmart.model.Login;
import com.clothmart.service.LoginService;

@Component
public class AuthenticationSuccessHandlerImplementation implements AuthenticationSuccessHandler {

	@Autowired
	HttpSession session; // auto wiring session

	@Autowired
	private LoginService loginService;

	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		String userName = "";
		userName = ((User) authentication.getPrincipal()).getUsername();

		Login loggedIn = this.loginService.getLoginDetails(userName);
		session.setAttribute("loggedIn", loggedIn);

		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		authorities.forEach(authority -> {
			if (authority.getAuthority().equals("ROLE_USER")) {
				try {
					redirectStrategy.sendRedirect(request, response, "/");
				} catch (IOException e) {
					e.printStackTrace();
				}
			} else if (authority.getAuthority().equals("ROLE_ADMIN")) {
				try {
					redirectStrategy.sendRedirect(request, response, "/admin/");
				} catch (IOException e) {
					e.printStackTrace();
				}
			} else if (authority.getAuthority().equals("ROLE_RETAILER")) {
				try {
					redirectStrategy.sendRedirect(request, response, "/retailer/");
				} catch (IOException e) {
					e.printStackTrace();
				}
			} else {
				throw new IllegalStateException();
			}
		});
	}

}