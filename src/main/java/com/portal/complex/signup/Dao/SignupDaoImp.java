package com.portal.complex.signup.Dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class SignupDaoImp implements SignupDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Object insertDao(String sqlId, Object SingupVo) {
		// Please implement! insert info  of User Code 
		// 성공시 -> 1 
		int result =sqlSession.insert(sqlId, SingupVo);
		return result;
	}
	

}
