package com.comento.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.comento.dto.CodeListRequest;
import com.comento.vo.CodeListVO;

@Mapper
public interface CodeListRepository {
	public List<CodeListVO> selectTest(CodeListRequest request);
}