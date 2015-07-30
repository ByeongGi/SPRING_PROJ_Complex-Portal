package com.portal.complex.utill;

public class PagingUtill {
	
	private int total_record; // 모든 데이터 레코드 (row 기준)
	private int page_per_record_cnt; // 페이지 당 레코드 수
	private int group_per_page_cnt; // 페이지당 보여줄 번호수 [1],[2],[3]

	private int pageno; // 현재 화면의 페이지 번호

	public int[] record_number(int page_per_record_cint,int total_record,int group_per_page_cnt,int pageno){
		int record_end_no=pageno*page_per_record_cint; // 현재 페이지의 레코드의 끝
		int record_Start_no=record_end_no-(page_per_record_cnt-1); // 현재 페이지의 레코드의 시작
		
		if(record_end_no>total_record){
			record_end_no = total_record;
		}
		
		int total_page = total_record / page_per_record_cnt + (total_record % page_per_record_cnt>0 ? 1 : 0);
		
		if(pageno>total_page){
			pageno = total_page;
		}
		
		// 현재 페이지 그룹 = 현재페이지/페이지당보여질번호수 + 나머지>0 ? 1 또는 0 을 더함 
		int group_no = pageno/group_per_page_cnt+( pageno%group_per_page_cnt>0 ? 1:0);
		// 페이지 그룹 끝 번호 = 현재 페이지 그룹 * 페이지당보여질번호수
		int page_eno = group_no*group_per_page_cnt;
		// 페이지 그룹 처음 번호 = 페이지 그룹 끝 번호 -(페이지당보여질 끝번호-1)
		int page_sno = page_eno-(group_per_page_cnt-1);	
		
		if(page_eno>total_page){
			page_eno=total_page;	
		}
		
		// 이전 그룹페이지 번호
		int prev_pageno = page_sno-group_per_page_cnt;
		// 다음 그룹 페이지 번호 
		int next_pageno = page_sno+group_per_page_cnt;
		
		// 이전 페이지가 1 이면 1로 고정
		if(prev_pageno==1){
			prev_pageno=1;
		}
		// 다음 페이지가 끝 페이지 보다 크면 
		if(next_pageno>total_page){
			// 다음 페이지 번호 = 전체 페이지/페이지당보여질 번호수*
			next_pageno=(total_page/group_per_page_cnt)*group_per_page_cnt+1;
			
		}
		return null;
	}









}

