package com.login;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DeleteController {
	 
@RequestMapping("/delete")
public ModelAndView delete(HttpServletRequest req,HttpServletRespose res)
{
	ModelAndView mv = new ModelAndView();
	
	return mv;
}
}
