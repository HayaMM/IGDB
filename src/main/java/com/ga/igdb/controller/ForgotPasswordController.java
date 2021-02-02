package com.ga.igdb.controller;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.data.repository.query.Param;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ga.igdb.model.User;
import com.ga.igdb.service.UserDetailsServiceImpl;
import com.ga.igdb.service.UserNotFoundException;

import net.bytebuddy.utility.RandomString;

@Controller
public class ForgotPasswordController {
	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private UserDetailsServiceImpl Service;

	@Autowired
	private Environment env;
	//method for mapping the forgot password page
	@GetMapping("/user/forgotpassword")
	public ModelAndView showForgotPasswordForm() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/forgotpassword");
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}
	//method for mapping the post forgot password page
	@PostMapping("/user/forgotpassword")
	public ModelAndView processForgotPassword(HttpServletRequest request, Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/forgotpassword");
		HomeController hc = new HomeController();

		String email = request.getParameter("emailAddress");
		String token = RandomString.make(30);
		System.out.println(email);
		System.out.println(token);

		try {
			Service.updateResetPasswordToken(token, email);
			// make reset password link
			String siteURL = request.getRequestURL().toString();
			String resetPasswordLink = hc.getSiteURL(request) + "/user/test?token=" + token;
			// send the email
			sendEmail(email, resetPasswordLink);
            model.addAttribute("message", "We have sent a reset password link to your email. Please check.");
			System.out.println("link " + resetPasswordLink);

		} catch (UserNotFoundException ex) {
			model.addAttribute("error", ex.getMessage());
		} catch (UnsupportedEncodingException | MessagingException e) {
			model.addAttribute("error", "Error while sending email");
		}

		hc.setAppName(mv, env);
		return mv;
	}

	// method for sending an email to the user email
	public void sendEmail(String email, String resetPasswordLink)
			throws MessagingException, UnsupportedEncodingException {

		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		helper.setFrom("contact@igdb.com", "IGDB Support");
		helper.setTo(email);
		String subject = "Here's the link to reset your password";

		String content = "<p>Hello,</p>" + "<p>You have requested to reset your password.</p>"
				+ "<p>Click the link below to change your password:</p>" + "<p><a href=\"" + resetPasswordLink
				+ "\">Change my password</a></p>" + "<br>" + "<p>Ignore this email if you do remember your password, "
				+ "or you have not made the request.</p>";
		helper.setSubject(subject);

		helper.setText(content, true);

		mailSender.send(message);
	}

	//method for mapping the reset password page
	@GetMapping("/user/reset_password")
	public ModelAndView ResetPassword(@Param(value="token") String token, Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/reset_password");
		
		User user = Service.getByResetPasswordToken(token);
		if(user == null) {
			model.addAttribute("message", "Invalid Token");
			return mv;
		}
		model.addAttribute("token", token);
		
		return mv;

	}
 // method for mapping the post of the rest password page and change the old password with the new password
	@PostMapping("/user/reset_password")
	public String ResetPassword	(HttpServletRequest request, Model model) {
		
		
		String token = request.getParameter("token");
		String newPassword = request.getParameter("passWord");
		User user = Service.getByResetPasswordToken(token);

		if(user == null) {
			model.addAttribute("updatemessage", "Invalid Token");
			return "redirect:/user/login";
		}else {
			Service.updatePassword(user, newPassword);
			model.addAttribute("updatemessage", "You Have Successfully changed your password");
		}
		return "redirect:/user/login";
		
	}

}