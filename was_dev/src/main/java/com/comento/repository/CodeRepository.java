package com.comento.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.comento.dto.CodeRequest;
import com.comento.vo.CodeInfoVO;
import com.comento.vo.CodeListVO;

@Mapper
public interface CodeRepository {
	public List<CodeInfoVO> selectCodeInfo(CodeRequest request);
	public List<CodeListVO> selectCodeList(CodeRequest.detail request);
}