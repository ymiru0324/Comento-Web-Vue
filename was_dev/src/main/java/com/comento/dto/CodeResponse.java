package com.comento.dto;

import java.util.List;

import com.comento.vo.CodeVO;

import lombok.Data;

@Data
public class CodeResponse {
	private List<CodeVO> list;
	
	private int totalCnt;
	private int perPage;
	private int curPage;
}
