package com.portal.complex.idCheckController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.portal.complex.idChek.sevice.IdCheckService;
import com.portal.complex.idChek.sevice.IdCheckServiceImp;


@Controller
public class IdCheckController {
	
	@Autowired
	IdCheckService Service;
	
	@RequestMapping(value="/idCheck"
			,method = {RequestMethod.GET,RequestMethod.POST}
			,produces = "application/json; charset=utf8")
	public @ResponseBody Map IdCheck(@RequestParam Map ID,ModelAndView modelAndView){
		Map<String, Integer> result = new HashMap<String, Integer>();
		
		// System.out.println("idCheck"+ID);
		int ret =(Integer) Service.select_ID_Check("ID_CHECK.S1", ID);
		// System.out.println(ret);
		
		result.put("check", ret);
		return result;
	}
}
