package com.comento.dto;

import lombok.Data;

@Data
public class CodeRequest {
	private String title;
	private String statCd;
	
	@Data
	public static class detail {
		private String seqNo;
	}
}
