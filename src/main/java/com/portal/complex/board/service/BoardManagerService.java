package com.portal.complex.board.service;


public interface BoardManagerService {
	public Object board_list(String sqlId,Object dataMap);	
	public Object board_insert(String sqlId,Object dataMap);
	public Object board_update(String sqlId,Object dataMap);
	public Object board_delete(String sqlId,Object dataMap);
	public Object board_read(String sqlId,Object dataMap);
	public Object board_search(String sqlId,Object dataMap);
}
