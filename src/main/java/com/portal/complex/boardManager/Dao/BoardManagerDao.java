package com.portal.complex.boardManager.Dao;

public interface BoardManagerDao {
	public Object board_list(String sqlId,Object dataMap);	
	public Object board_recordConut(String sqlId,Object dataMap);	
	public Object board_insert(String sqlId,Object dataMap);
	public Object board_update(String sqlId,Object dataMap);
	public Object board_delete(String sqlId,Object dataMap);
	public Object board_read(String sqlId,Object dataMap);
}
