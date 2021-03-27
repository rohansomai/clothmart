package com.clothmart.service;

import java.util.List;
import java.util.Optional;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clothmart.model.Login;
import com.clothmart.model.User;
import com.clothmart.repository.UserDAO;

@Service
@Transactional
public class UserServiceImplementation implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private LoginService loginService;

	@Override
	public void insert(User user) {

		user.setStatus(true);
		this.userDAO.save(user);

	}

	@Override
	public List<User> getUsersList() {

		return this.userDAO.findAll();
	}

	@Override
	public User getEditList(User user) {

		Optional<User> o = this.userDAO.findById(user.getId());
		return o.get();

	}

	@Override
	public void delete(User user) {

//		this.userDAO.delete(user);
		User user2 = this.userDAO.findById(user.getId()).get();
		user2.setStatus(false);
		this.userDAO.save(user2);
	}

	@Override
	public boolean checkEmailAlreadyExists(String email, String role) // true if user already exists
	{

		Login login = this.loginService.findByEmailAndRole(email, role);
		if (login != null)
			return true;
		else
			return false;
	}

	public void sendMail(String from, String to, String subject, String message) throws Exception {

		String host = "smtp.gmail.com";

		Properties properties = System.getProperties();

		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", "465");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");

//		Step1: Get the session object
		Session session = Session.getInstance(properties, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {

				return new PasswordAuthentication("contact.clothmart@gmail.com", "clothmart@admin");
			}

		});

		session.setDebug(true);

//		Step2: Compose the message
		MimeMessage mimeMessage = new MimeMessage(session);

		// from email
		mimeMessage.setFrom(from);

		// adding Recipient to message
		mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

		// adding subject
		mimeMessage.setSubject(subject);

		// adding message
		mimeMessage.setText(message);

//		Step3: Send mail using transport layer

		Transport.send(mimeMessage);

		System.out.println("Mail Sent Successfully");

	}

	@Override
	public User getUserByLogin(Login login) {

		return this.userDAO.findByLogin(login);	
	}

}
