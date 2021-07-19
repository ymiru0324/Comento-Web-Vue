package com.comento.vo;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("codelist")
public class CodeListVO {
	private String commCdId;
	private String cdId;
	private String cdNm;
	private String cdEng;
	private String cdSort;
	private String cdUseYn;
	private String conn1Cd;
	private String conn2Cd;
	private String conn3Cd;
}
