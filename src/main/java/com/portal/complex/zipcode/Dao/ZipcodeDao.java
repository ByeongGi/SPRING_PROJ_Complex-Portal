package com.portal.complex.zipcode.Dao;


public interface ZipcodeDao {
	public Object selectList_sido(Object sqlMapId, Object dataMap);
	public Object selectList_sigungu(Object sqlMapId, Object dataMap);
	public Object selectList_dong(Object sqlMapId, Object dataMap);
	public Object selectList_address(Object sqlMapId, Object dataMap);
}
