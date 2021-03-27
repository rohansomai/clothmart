package com.clothmart.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

@Configuration
@EnableWebSecurity
public class ClothMartConfiguration extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private AuthenticationSuccessHandler successHandler;
	
	@Bean
	public UserDetailsService getUserDetailsService()
	{
		return new UserDetailsServiceImplementation();
	}

	@Bean
	public BCryptPasswordEncoder passwordEncoder()
	{
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public AuthenticationSuccessHandler getAuthenticationSuccessHandler()
	{
		return new AuthenticationSuccessHandlerImplementation();
	}
	
	@Bean
	public DaoAuthenticationProvider authenticationProvider()
	{
		
		DaoAuthenticationProvider daoAuthenticationProvider = new DaoAuthenticationProvider();
		
		daoAuthenticationProvider.setUserDetailsService(this.getUserDetailsService());
		daoAuthenticationProvider.setPasswordEncoder(this.passwordEncoder());
		
		return daoAuthenticationProvider;
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.authenticationProvider(this.authenticationProvider());
	}

	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests().antMatchers("/admin/**").hasRole("ADMIN") 
		.antMatchers("/retailer/**").hasRole("RETAILER")
//	    .antMatchers("/user/**").hasRole("USER")
		.antMatchers("/**").permitAll()	
		.and().formLogin()
		.loginPage("/login")
		.defaultSuccessUrl("/", true)
		.successHandler(successHandler)
		.and().csrf().disable();
		
	}
	
	
	
}
