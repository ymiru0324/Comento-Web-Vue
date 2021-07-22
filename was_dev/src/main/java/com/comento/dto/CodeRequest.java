package com.comento.dto;

import lombok.Data;

@Data
public class CodeRequest {
	private String codeNm;
	
	@Data
	public static class detail {
		private String codeNm;
		private String commCdId;
	}
}
