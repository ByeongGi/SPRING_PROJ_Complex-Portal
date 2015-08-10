package com.portal.complex.ManagerContoller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.portal.complex.board.service.BoardManagerService;
import com.portal.complex.board.vo.BoardVo;
import com.portal.complex.userManager.service.UserManagerService;

@Controller
public class ManagerController {
	
	
	@Autowired
	UserManagerService service_User;
	
	@Autowired
	BoardManagerService service_board;
	
	
	@RequestMapping(value = "/admin/{pageName}")
	public String adminPageController(@PathVariable String pageName,
			ModelAndView modelandView) {
		
		String url = "";
		if ("home".equals(pageName)){
			url = "/admin/home";
		}
		return url;
	}
	
	
	@RequestMapping(value = "/admin/UserManager/{pageName}")
	public ModelAndView userManagerController(@PathVariable String pageName,ModelAndView modelandView) {
		List<Map<String,String>> UserInfo= (List<Map<String, String>>) service_User.UserList("UserManager.info");
		String url = "";
		if ("UserInfo".equals(pageName)){	
		url = "/admin/UserManager/UserInfo";
		
		System.out.println(UserInfo);
		modelandView.addObject("UserInfo", UserInfo);
		modelandView.setViewName(url);
		}
		return modelandView;
	}
	

}
