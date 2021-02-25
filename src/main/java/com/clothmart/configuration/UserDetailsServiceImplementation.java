package com.clothmart.configuration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.clothmart.model.Login;
import com.clothmart.service.LoginService;

public class UserDetailsServiceImplementation implements UserDetailsService{
	
	@Autowired
	private LoginService loginService;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		Login login = this.loginService.findByEmail(username);
		if(login==null)
		{
			throw new UsernameNotFoundException("User Not Found!!");
		}
//		CustomUserDetails customUserDetails = new CustomUserDetails(login);
		
		return new User(login.getEmail(), login.getPassword(), List.of(new SimpleGrantedAuthority(login.getRole())));
	}

}
