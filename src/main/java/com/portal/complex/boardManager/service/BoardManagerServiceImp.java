package com.portal.complex.boardManager.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import oracle.net.aso.p;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portal.complex.boardManager.Dao.BoardManagerDao;
import com.portal.complex.utill.PagingUtill;

@Service
public class BoardManagerServiceImp implements BoardManagerService{
	
	@Autowired
	BoardManagerDao dao;
	
	@Override
	public Object board_list(String sqlId, Object dataMap) {
		
		
		System.out.println("currentpage"+dataMap);
		int page_per_record_cnt=10; // 페이지 당 레코드 수
		int group_per_page_cnt=5; // 페이지당 보여줄 번호수 [1],[2],[3}
		int pageno=(int)dataMap; // 현재 화면의 페이지 번호		
		int total_record = (int) dao.board_recordConut("Board.TOTALRECOND", ""); 
		
		// 페이지 유틸 실행
		PagingUtill pagingUtill= new PagingUtill(total_record, page_per_record_cnt, group_per_page_cnt, pageno);
		Map<String, Object> pagingDataMap = pagingUtill.page_dataMap();
		
		
		// DB 검색
		List<Object> boardData=(List<Object>) dao.board_list(sqlId, pagingDataMap);
		
		// Controller 로  데이터 전달
		Map<Object, Object> board = new HashMap<Object, Object>();
		board.put("boardData", boardData);
		board.put("pagingData", pagingDataMap);
		return board;
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

	@Override
	public Object board_read(String sqlId, Object dataMap) {
		return dao.board_read(sqlId, dataMap);
	}

	@Override
	public Object board_search(String sqlId, Object dataMap) {
		System.out.println("\n====== search paramMap"+dataMap.toString());
		Map<String, Object> paramMap= (Map<String, Object>) dataMap;
		
		int page_per_record_cnt=10; // 페이지 당 레코드 수
		int group_per_page_cnt=5; // 페이지당 보여줄 번호수 [1],[2],[3}
		int pageno=(int) paramMap.get("currentpage"); // 현재 화면의 페이지 번호		
		int total_record = (int) dao.board_recordConut("Board.SEARCH_TOTALRECOND",paramMap); 
		
		// 페이지 유틸 실행
		PagingUtill pagingUtill= new PagingUtill(total_record, page_per_record_cnt, group_per_page_cnt, pageno);
		Map<String, Object> pagingDataMap = pagingUtill.page_dataMap();
		pagingDataMap.put("keyword", paramMap.get("keyword"));
		pagingDataMap.put("searchWord", paramMap.get("searchWord"));
		
		// DB 검색
		List<Object> boardData=(List<Object>) dao.board_list(sqlId, pagingDataMap);
		
		// Controller 로  데이터 전달
		Map<Object, Object> board = new HashMap<Object, Object>();
		board.put("boardData", boardData);
		board.put("pagingData", pagingDataMap);
		return board;
	}

	

}
