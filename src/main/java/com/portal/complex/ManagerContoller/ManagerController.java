package com.portal.complex.ManagerContoller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import oracle.net.aso.b;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	
	@RequestMapping(value = "/board/{boardName}" ,method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView boardController(@PathVariable String boardName
			,ModelAndView modelandView
			,@RequestParam(required=false,value="currentpage") Integer currentpage){
		if (currentpage ==null) {
			currentpage=1;
		}
	
		
		String url = "";
		if("board01".equals(boardName))	{
			url = "/board/board01";
			Map<Object, Object> board = (Map<Object, Object> )service_board.board_list("Board.sss",currentpage);
			modelandView.addObject("boardData",board.get("boardData"));
			modelandView.addObject("pagingData",board.get("pagingData"));
			modelandView.setViewName(url);
		}
		
		System.out.println(url);
		return modelandView;
		
	}
	
	
	@RequestMapping(value = "/boardService/{command}/{NID}" ,method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView boardServiceController(@PathVariable int NID
			,@PathVariable String command
			,ModelAndView modelandView
			,@ModelAttribute BoardVo bvo){
		
		String url = "";
		 if ("read".equals(command)){
			url = "/boardService/read";
			BoardVo vo=(BoardVo) service_board.board_read("Board.READ", NID);
			modelandView.addObject("boarddata",vo);
		} else if ("insert".equals(command)) {
			url = "/boardService/insert";
			// service_board.board_insert(sqlId, dataMap);
		} else if ("update".equals(command)){
			BoardVo vo=(BoardVo) service_board.board_read("Board.READ", NID);
			modelandView.addObject("boarddata",vo);
			url = "/boardService/update";
		} else if ("/board/delete".equals(command)){
			url = "/boardService/delete";
		}
		modelandView.setViewName(url);
		System.out.println(url);
		return modelandView;
		
	}
	
	
	@RequestMapping(value = "/boardSucess/{command}" ,method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView boardCRLD(@PathVariable String command
			,ModelAndView modelandView
			,@ModelAttribute BoardVo bvo){
		
		String url = "";
		if ("insert".equals(command)) {
			url = "/boardSucess/insert";
			//service_board.board_insert("", bvo);
		} else if ("update".equals(command)){
			url = "/boardSucess/update";
			//service_board.board_update(sqlId, dataMap);
		} else if ("/board/delete".equals(command)){
			url = "/boardSucess/delete";
			// service_board.board_delete(sqlId, dataMap);
		}
		
		modelandView.setViewName(url);
		System.out.println(url);
		return modelandView;
		
	}
	
	
	@SuppressWarnings("unused")
	@RequestMapping(value = "/board/Search" ,method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody ModelAndView boardSearch(ModelAndView modelandView
			,@RequestParam(required=false,value="currentpage") Integer currentpage
			,@RequestParam(required=false,value="keyword") String keyword
			,@RequestParam(required=false,value="searchWord") String searchWord){
		Map<String, Object> paramMap= new HashMap<String, Object>();
		if (currentpage ==null) currentpage=1;
		
		System.out.println("currentpage : "+currentpage);
		System.out.println("keyword : "+keyword);
		System.out.println("searchWord : "+searchWord);
		
		paramMap.put("currentpage", currentpage);
		paramMap.put("keyword", keyword);
		paramMap.put("searchWord", searchWord);
		
		String url = "";
		
		if ("keyword"!=null) {
			url = "/board/board01";
			Map<Object, Object> board = (Map<Object, Object> )service_board.board_search("Board.SEARCH",paramMap);
			modelandView.addObject("boardData",board.get("boardData"));
			modelandView.addObject("pagingData",board.get("pagingData"));
			modelandView.setViewName(url);
		} 
		
		modelandView.setViewName(url);
		System.out.println(url);
		return modelandView;
		
	}
	

}
