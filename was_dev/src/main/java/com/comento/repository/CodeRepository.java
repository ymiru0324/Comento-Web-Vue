package com.comento.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.comento.dto.CodeRequest;
import com.comento.vo.CodeVO;

@Mapper
public interface CodeRepository {
	public List<CodeVO> selectTest(CodeRequest request);
}