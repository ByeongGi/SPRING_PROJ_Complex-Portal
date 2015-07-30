package com.portal.complex.boardManager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portal.complex.boardManager.Dao.BoardManagerDao;

@Service
public class BoardManagerServiceImp implements BoardManagerService{
	
	@Autowired
	BoardManagerDao dao;
	
	@Override
	public Object board_list(String sqlId, Object dataMap) {
		List<Object> board_data=(List<Object>) dao.board_list(sqlId, dataMap);
		return board_data;
	}

	@Override
	public Object board_insert(String sqlId,Object dataMap) {
		int ret = (int) dao.board_insert(sqlId, dataMap);
		return ret;
	}

	@Override
	public Object board_update(String sqlId, Object dataMap) {
		int ret = (int) dao.board_update(sqlId, dataMap);
		return ret;
	}

	@Override
	public Object board_delete(String sqlId, Object dataMap) {
		int ret = (int) dao.board_delete(sqlId, dataMap);
		return ret;
	}

	

}
