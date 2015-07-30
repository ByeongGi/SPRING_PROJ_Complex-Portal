package com.portal.complex.ManagerContoller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.portal.complex.boardManager.service.BoardManagerService;
import com.portal.complex.boardVo.BoardVo;
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
	
	
	@RequestMapping(value = "/board/{boardName}")
	public ModelAndView boardController(@PathVariable String boardName,
			ModelAndView modelandView){
		List<BoardVo> boarddata = (List<BoardVo>) service_board.board_list("Board.SELECT","");
		String url = "";
		if("board01".equals(boardName))			url = "/board/board01";
		modelandView.addObject("data",boarddata);
		modelandView.setViewName(url);
		System.out.println(url);
		return modelandView;
		
	}
	
	

}
