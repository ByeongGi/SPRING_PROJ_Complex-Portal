package com.portal.complex.signup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portal.complex.signup.Dao.SignupDao;

@Service
public class SignupServiceImp implements SignupService {
	
	@Autowired
	SignupDao dao;
	
	@Override
	public Object insertDao(String sqlId, Object SingupVo) {
		int result =(int) dao.insertDao(sqlId, SingupVo);
		return result;
	}

	
	
	
}
