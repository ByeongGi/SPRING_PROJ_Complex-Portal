package com.portal.complex.userManager.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portal.complex.userManager.Dao.UserManagerDao;

@Service
public class UserManagerServiceImp implements UserManagerService {
	
	@Autowired
	private UserManagerDao dao;
	
	@Override
	public Object UserList(String sqlId) {
		List<Map<Object,Object>> UserInfo=(List<Map<Object, Object>>) dao.UserList(sqlId);
		return UserInfo;
	}

	@Override
	public Object UserUpdate() {
		// TODO Auto-generated method stub
		return null;
	}

}
