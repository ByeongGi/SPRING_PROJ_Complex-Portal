package com.portal.complex.idCheck.Dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class IdCheckDaoImp implements IdCheckDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Object select_ID_Check(Object sqlMapId, Object dataMap) {
		String result = sqlSession.selectOne((String) sqlMapId,dataMap);
		return result;
	}

}
