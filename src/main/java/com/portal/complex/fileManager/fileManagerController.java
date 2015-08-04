package com.portal.complex.fileManager;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.portlet.ModelAndView;

@Controller
public class fileManagerController {
	
	 @RequestMapping(value = "/upload", method = RequestMethod.POST)
	    public void fileUpload(MultipartHttpServletRequest  request,ModelAndView modelAndView) 
	    		throws IllegalStateException, IOException {
		 // 파일 저장 위치 지정	
		 String fileRoot = "C:\\Users\\Admin\\Downloads";	
		 MultipartFile multipartFile=request.getFile("file");
		 
		 	if (!multipartFile.isEmpty()) {
		 		File file = new File(fileRoot,multipartFile.getOriginalFilename());
		 		multipartFile.transferTo(file);
		 		System.out.println(file.getAbsolutePath());
		 		System.out.println(file.getName());
		 		System.out.println(file.getParent());
		 		System.out.println(file.getPath());
		 		
			}
		 	
	    }
	 
	   
	

}
