package com.portal.complex.zipcode.Dao;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class ZipcodeDaoImp implements ZipcodeDao{
	
	
	@Autowired
    private SqlSessionTemplate sqlSession;
	
	@Override @Transactional
	public List<Map<Object,Object>> selectList_sido(Object sqlMapId, Object dataMap) {
		List<Map<Object,Object>> list_sido= sqlSession.selectList((String) sqlMapId,dataMap);
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
