package com.portal.complex.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class BoardManagerDaoImp implements BoardManagerDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Object board_list(String sqlId,Object dataMap) {
		List<Object> board_data=sqlSession.selectList(sqlId,dataMap);
		return board_data;
	}

	@Override
	public Object board_insert(String sqlId,Object dataMap) {
		int ret = sqlSession.insert(sqlId,dataMap);
		return ret;
	}

	@Override
	public Object board_update(String sqlId, Object dataMap) {
		int ret =sqlSession.update(sqlId,dataMap);
		return ret;
	}

	@Override
	public Object board_delete(String sqlId, Object dataMap) {
		int ret =sqlSession.delete(sqlId, dataMap);
		return ret;
	}

	@Override
	public Object board_recordConut(String sqlId, Object dataMap) {
		return sqlSession.selectOne(sqlId,dataMap);
	}

	@Override
	public Object board_read(String sqlId, Object dataMap) {
		return sqlSession.selectOne(sqlId, dataMap);
	}

	
	
	

}
