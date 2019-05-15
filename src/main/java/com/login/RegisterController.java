package com.login;

 
 
 

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.login.service.RegisterService;
import com.register.view.RegisterView;

@Controller
public class RegisterController {
	@RequestMapping("/registration")
	public ModelAndView registeruser(HttpServletRequest req,HttpServletResponse res)
	
	{
		ModelAndView mv = new ModelAndView();
		
		
		
		
		
			mv.setViewName("register.jsp");
		
		return mv;
	}
	
	@RequestMapping("/register")
	public ModelAndView adduser(HttpServletRequest req,HttpServletResponse res)	
	{
		ModelAndView mv = new ModelAndView();
		
		 
		RegisterView rv = new RegisterView();
//		rv.setId(Integer.parseInt(req.getParameter("id-txt")));
		rv.setFirstname(req.getParameter("fname-txt"));
		rv.setLastname(req.getParameter("lname-txt"));
		rv.setMiddlename(req.getParameter("mname-txt"));
		rv.setGender(req.getParameter("radio"));
		 
 
//		rv.setDob(req.getParameter("do-txt"));
		rv.setDepartment(req.getParameter("select"));
		rv.setFathername(req.getParameter("faname-txt"));
		rv.setMothername(req.getParameter("moname-txt"));
		rv.setEmail(req.getParameter("email-txt"));
		rv.setPhone(Long.parseLong(req.getParameter("phone-txt")));
		rv.setAddress(req.getParameter("address-txt"));
		rv.setCheckbox(req.getParameter("checkbox"));
//		rv.setReading(req.getParameter("reading"));
//		rv.setPlaying(req.getParameter("playing"));
//		rv.setDancing(req.getParameter("dancing"));
//		rv.setSinging(req.getParameter("singing"));
		 
		
		
		RegisterService rs = new RegisterService();
		rs.register(rv);
		
			mv.setViewName("index.jsp");
		
		return mv;
	}

}

	

