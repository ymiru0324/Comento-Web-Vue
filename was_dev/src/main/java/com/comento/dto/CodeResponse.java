package com.comento.dto;

import java.util.List;

import com.comento.vo.CodeInfoVO;
import com.comento.vo.CodeListVO;

import lombok.Data;

@Data
public class CodeResponse {
	private List<CodeInfoVO> list;
	
	private int totalCnt;
	private int perPage;
	private int curPage;
	
	@Data
	public static class CodeListResponse {
		private List<CodeListVO> list;
		
		private int totalCnt;
		private int perPage;
		private int curPage;
	}
}
