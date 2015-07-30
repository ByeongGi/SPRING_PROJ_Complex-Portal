package com.portal.complex.zipcode.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portal.complex.zipcode.Dao.ZipcodeDao;

@Service
public class ZipcodeServiceImp implements ZipcodeService{
	
	@Autowired
	private ZipcodeDao zipcodeDao;
	
	@Override
	public List<Map<Object,Object>> selectList_sido(Object sqlMapId, Object dataMap) {
		System.out.println("DB dataMap : "+dataMap );
		List<Map<Object,Object>> list_sido=(List<Map<Object, Object>>) zipcodeDao.selectList_sido(sqlMapId, dataMap);
		return list_sido;
	}

	@Override
	public Object selectList_sigungu(Object sqlMapId, Object dataMap) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object selectList_dong(Object sqlMapId, Object dataMap) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object selectList_address(Object sqlMapId, Object dataMap) {
		// TODO Auto-generated method stub
		return null;
	}

}
