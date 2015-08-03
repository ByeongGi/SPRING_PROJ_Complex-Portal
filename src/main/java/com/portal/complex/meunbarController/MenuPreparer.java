package com.portal.complex.meunbarController;

import org.apache.tiles.AttributeContext;
import org.apache.tiles.context.TilesRequestContext;
import org.apache.tiles.preparer.ViewPreparer;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.portal.complex.security.UserInfo;

@Component("menuPreparer")
public class MenuPreparer implements ViewPreparer {

	

	@Override
	public void execute(TilesRequestContext tilesContext, AttributeContext attributeContext) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Object principal = auth.getPrincipal();
		String userName = "";
		String name = "";
		String password ="";
		if (principal != null && principal instanceof UserInfo) {
			userName = ((UserInfo) principal).getId();
			name = ((UserInfo) principal).getName();
			password = ((UserInfo) principal).getPassword();
			System.out.println("userName" + userName);
			System.out.println("Name" + userName);
			System.out.println("password" + password);
			
		}
			tilesContext.getParam().put("userName",userName+ " , "+auth.getName());
		
	}

}
