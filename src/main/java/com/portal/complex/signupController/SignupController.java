package com.portal.complex.signupController;
/**
 * 		Singup Controller  회원가입시 유저의 정보를 
 * 		DB에 insert 하는 기능을 수행한다.
 * 		2015.07.27 by B.G Kim
 *  
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.portal.complex.signup.service.SignupService;
import com.portal.complex.singupVo.SignupVo;

@Controller
public class SignupController {
	
	@Autowired
	SignupService service;
	

	@RequestMapping(value ="/singup/form" , method=RequestMethod.POST )
	public ModelAndView signupController(ModelAndView modelandview,@ModelAttribute SignupVo vo){
		// sign up Vo 객체를 받아서 DB 에 저장하는것을 구현
		int result=(int) service.insertDao("UserManager.insert", vo);
		String url = "";
		if (result==1) {
			url = "/menu/signup-success";
			modelandview.addObject("UserInfo", vo);
			modelandview.setViewName(url);
		}
		return modelandview;		
	}
	
	

}
