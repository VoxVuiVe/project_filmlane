package com.poly.service.impl;

import javax.servlet.ServletContext;

import com.poly.entity.User;
import com.poly.service.EmailService;
import com.poly.util.SendEmailUtil;

public class EmailServiceImpl implements EmailService{
	private static final String EMAIL_WELCOME_SUBJECT = "Welcome to FilmLane - Owner : Van Vo";
	private static final String EMAIL_FORGOT_PASSWORD = "NEW PASSWORD - FilmLane - Owner : Van Vo";
	
	@Override
	public void sendMail(ServletContext context, User recipient, String type) {
        String host = context.getInitParameter("host");
        String port = context.getInitParameter("port");
        String user = context.getInitParameter("user");
        String pass = context.getInitParameter("pass");
        
        try {
			String content = null;
			String subject = null;
			switch(type) {
				case "welcome":
					subject = EMAIL_WELCOME_SUBJECT;
					content = "Filmlane, Dear " + recipient.getUsername() + ", hope you have a good time!";
					break;
				case "forgot":
					subject = EMAIL_FORGOT_PASSWORD;
					content = "Filmlane, Dear " + recipient.getUsername() + ", your new password here: " + recipient.getPassword();
					break;
				default:
					subject = "Filmlane, Dear";
					content = "Maybe this email is wrong, don't care about it";		
			}
			SendEmailUtil.sendEmail(host, port, user, pass, recipient.getEmail(), subject, content);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
