package com.comento.vo;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("code")
public class CodeVO {
	private String commCdId;
	private String commCdNm;
	private String commCdEng;
	private String cdSort;
	private String cdUseYn;
	private String conn1Cd;
	private String conn2Cd;
	private String conn3Cd;
}
