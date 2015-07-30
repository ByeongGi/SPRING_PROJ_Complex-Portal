package com.portal.complex.meunbarController;
/**
 * 		Menubar Controller class 는  tiles 2 로 나누어진 layout을 
 * 		통해서 자원의 주소를 연결하는 연결해주는 클래스이다.	
 *		2015.07.27 by B.G Kim  
 */
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class menubarController {

	@RequestMapping(value = "/menu/{menuName}")
	public ModelAndView menuController(@PathVariable String menuName,
			ModelAndView modelandView) {

		String url = "";
		if ("log-in".equals(menuName)) 			url = "/menu/log-in";
		else if ("sign-up".equals(menuName)) 	url = "/menu/sign-up";
		else if ("/menu/home".equals(menuName)) url = "";
		else if ("log-out".equals(menuName)) 	url = "/menu/log-out"; 

		modelandView.setViewName(url);
		System.out.println(url);
		return modelandView;
	}
	
	
	
	@RequestMapping(value = "/page/{pageName}")
	public ModelAndView menuPageController(@PathVariable String pageName,
			ModelAndView modelandView) {
		
		String url = "";
		if ("page1-1".equals(pageName))     	url = "/page/page1-1";
		else if ("page1-2".equals(pageName))	url = "/page/page1-2";
		else if ("page1-3".equals(pageName)) 	url = "/page/page1-3";
		else if ("page1-4".equals(pageName))  	url = "/page/page1-4";
		else if ("page1-5".equals(pageName))  	url = "/page/page1-5";
		else if ("page1-6".equals(pageName)) 	url = "/page/page1-6";
		else if ("page1-7".equals(pageName))  	url = "/page/page1-7";
		else if ("page1-8".equals(pageName))  	url = "/page/page1-8";
		else if ("page1-9".equals(pageName)) 	url = "/page/page1-9";
		else if ("page1-10".equals(pageName)) 	url = "/page/page1-10";
		else if ("page1-11".equals(pageName)) 	url = "/page/page1-11";
		else if ("page1-12".equals(pageName)) 	url = "/page/page1-12";
		
		
		modelandView.setViewName(url);
		System.out.println(url);
		return modelandView;
	}
	
	@RequestMapping(value = "/auth/{pageName}")
	public ModelAndView loginPageController(@PathVariable String pageName,
			ModelAndView modelandView) {
		
		String url = "";
		if ("login".equals(pageName))   		url = "/auth/login";
		modelandView.setViewName(url);
		return modelandView;
	}


}
