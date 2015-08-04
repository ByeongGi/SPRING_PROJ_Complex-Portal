package com.portal.complex.utill;

import java.util.ArrayList;
import java.util.Collection;

import org.apache.tiles.AttributeContext;
import org.apache.tiles.context.TilesRequestContext;
import org.apache.tiles.preparer.ViewPreparer;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.portal.complex.security.UserInfo;

@Component("menuprepare")
public class MenuPreparer implements ViewPreparer {

	@Override
	public void execute(TilesRequestContext tilesContext,
			AttributeContext attributeContext) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Object principal = auth.getPrincipal();
		String userName = "";
		String name = "";
		String password ="";
		Collection<? extends GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		if (principal != null && principal instanceof UserInfo) {
			userName = ((UserInfo) principal).getId();
			name = ((UserInfo) principal).getName();
			password = ((UserInfo) principal).getPassword();
			authorities = ((UserInfo) principal).getAuthorities();
		}
		
		tilesContext.getRequestScope().put("UID",userName );
		tilesContext.getRequestScope().put("UNAME",name );
		tilesContext.getRequestScope().put("UAUTH",authorities.toString() );
		
	}

	

}
