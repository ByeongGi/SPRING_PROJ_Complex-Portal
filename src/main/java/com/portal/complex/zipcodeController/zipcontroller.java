package com.portal.complex.zipcodeController;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.portal.complex.zipcode.service.ZipcodeService;

@Controller
public class zipcontroller {
	
	@Autowired
	private ZipcodeService zipcodeService;
	
	
	@RequestMapping(value="/Zipcode01",method = {RequestMethod.GET,RequestMethod.POST}, produces = "application/json; charset=utf8")
	public @ResponseBody List<Map<String,String>> ZipcodeController1(@RequestParam Map select_Providence){
			String parameter_sido = (String) select_Providence.get("select_Providence");
			
			//System.out.println(parameter_sido);
		try {
			parameter_sido=URLDecoder.decode(parameter_sido, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		select_Providence.put("select_Providence", parameter_sido);
		
		List<Map<String,String>> List_sido = (List<Map<String, String>>) zipcodeService.selectList_sido("Zipcode.S1",select_Providence);
		
		// System.out.println("List_sido json 의 값"+List_sido);
		
		return List_sido;
	}
	
	@RequestMapping(value="/Zipcode02",method = {RequestMethod.GET,RequestMethod.POST}, produces = "application/json; charset=utf8")
	public @ResponseBody List<Map<String,String>> ZipcodeController2(@RequestParam Map select_zipcode){
		String parameter_sido = (String) select_zipcode.get("select_Providence");
		String parameter_sigungu = (String) select_zipcode.get("select_sigungu");
		System.out.println(parameter_sido);
		System.out.println(parameter_sigungu);
		try {
			parameter_sido=URLDecoder.decode(parameter_sido, "UTF-8");
			parameter_sigungu=URLDecoder.decode(parameter_sigungu, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		select_zipcode.put("select_Providence", parameter_sido);
		select_zipcode.put("select_sigungu", parameter_sigungu);
		
		List<Map<String,String>> List_sido = (List<Map<String, String>>) zipcodeService.selectList_sido("Zipcode.S2",select_zipcode);
		
		// System.out.println("List_sido json 의 값"+List_sido);
		
		return List_sido;
	}
	
	@RequestMapping(value="/Zipcode03",method = {RequestMethod.GET,RequestMethod.POST}, produces = "application/json; charset=utf8")
	public @ResponseBody List<Map<String,String>> ZipcodeController3(@RequestParam Map select_zipcode){
		String parameter_sido = (String) select_zipcode.get("select_Providence");
		String parameter_sigungu = (String) select_zipcode.get("select_sigungu");
		String parameter_dong = (String) select_zipcode.get("select_dong");
		
		//System.out.println(parameter_sido);
		//System.out.println(parameter_sigungu);
		//System.out.println(parameter_dong);
		try {
			parameter_sido=URLDecoder.decode(parameter_sido, "UTF-8");
			parameter_sigungu=URLDecoder.decode(parameter_sigungu, "UTF-8");
			parameter_dong=URLDecoder.decode(parameter_dong, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		select_zipcode.put("select_Providence", parameter_sido);
		select_zipcode.put("select_sigungu", parameter_sigungu);
		select_zipcode.put("select_dong", parameter_dong);
		
		List<Map<String,String>> List_sido = (List<Map<String, String>>) zipcodeService.selectList_sido("Zipcode.S3",select_zipcode);
		
		System.out.println("List_sido json 의 값"+List_sido);
		
		return List_sido;
	}
	
	
	
	
}
