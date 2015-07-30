package com.portal.complex.userManager.Dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserManagerDaoImp implements UserManagerDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	@Override
	public Object UserList(String sqlId) {
		List<Map<Object,Object>> UserInfo=sqlSession.selectList(sqlId,"USERINFO");
		return UserInfo;
	}

	@Override
	public Object UserUpdate() {
		
		return null;
	}

}
