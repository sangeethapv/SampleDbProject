package com.login;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.login.service.RegisterService;
import com.login.service.UpdateService;
import com.register.view.RegisterView;

@Controller
public class UpdateController {
	
@RequestMapping("/update")
public ModelAndView updateuser(HttpServletRequest req,HttpServletRespose res)
{
	ModelAndView mv = new ModelAndView();
	
	RegisterView rv = new RegisterView();
	//System.out.println(req.getParameter("id-txt"));
	 
	rv.setFirstname(req.getParameter("fname-txt"));
	rv.setGender(req.getParameter("radio"));
	rv.setDepartment(req.getParameter("select"));
	rv.setEmail(req.getParameter("email-txt"));
	rv.setPhone(Long.parseLong(req.getParameter("phone-txt")));
	rv.setId(Integer.parseInt(req.getParameter("id-txt")));
	
	UpdateService rs = new UpdateService();
	rs.update(rv);
	
		mv.setViewName("success.jsp");
	return mv;
}
}
