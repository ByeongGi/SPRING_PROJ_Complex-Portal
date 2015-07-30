package com.portal.complex.idChek.sevice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portal.complex.idCheck.Dao.IdCheckDao;


@Service 
public class IdCheckServiceImp implements IdCheckService {

	@Autowired
	private IdCheckDao idChkDao;
	
	@Override
	public Object select_ID_Check(Object sqlMapId, Object dataMap) {
		String result=(String) idChkDao.select_ID_Check(sqlMapId, dataMap);
		int ret = Integer.parseInt(result);
		return ret;
	}

}
