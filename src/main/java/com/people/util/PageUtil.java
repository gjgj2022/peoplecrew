package com.people.util;

import java.util.HashMap;
import java.util.Map;

public class PageUtil {
	public static Map<String, Object> getPageData(int totalCount, int recordPerPage, int currentPage){
		Map<String, Object> map = new HashMap<String, Object>();
		
				int totalPage = (totalCount % recordPerPage == 0) ? totalCount / recordPerPage : totalCount / recordPerPage + 1;

				int endNo = currentPage * recordPerPage;
				int startNo = (currentPage - 1) * recordPerPage + 1;  //이전 cp값 +1 

				// 시작페이지
				int startPage = 1;
				// 끝페이지
				int endPage = 10;

				//시작페이지 미세 조정 
				if(currentPage%recordPerPage==0) {
					startPage = currentPage-9;
				}else {
				startPage = ((int)(currentPage/recordPerPage))*recordPerPage+1;
				}

				//끝페이지 미세조정 
				
				if((totalPage%recordPerPage==0)|| ( totalPage >=(( (Math.floor(currentPage/recordPerPage) )*recordPerPage) +11))) {
					endPage=startPage+9;
				}else{
					endPage=totalPage;
				};
				

				boolean isNext = false;
				boolean isPre = false;

				
				if (startPage!=1)
					isPre = true;

				
				if (totalPage>endPage)
					isNext = true;
				
				//계산한걸 맵 객체에 담기 
				//map.put("키", value);
				map.put("startNo", startNo);
				map.put("endNo", endNo);
				map.put("currentPage", currentPage);
				map.put("recordPerPage", recordPerPage);
				map.put("totalPage", totalPage);
				map.put("totalCount", totalCount);
				map.put("startPage", startPage);
				map.put("endPage", endPage);
				map.put("isNext", isNext);
				map.put("isPre", isPre);
				
				return map;
		
	}
}
