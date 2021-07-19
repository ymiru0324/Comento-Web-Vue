package com.comento.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.comento.dto.CodeListRequest;
import com.comento.repository.CodeListRepository;
import com.comento.vo.CodeListVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class CodeListService {
	private static final Logger LOGGER = LoggerFactory.getLogger(CodeListService.class);

	@Autowired
	CodeListRepository repository;

	public List<CodeListVO> selectTest(CodeListRequest reqeust){
		return repository.selectTest(reqeust);
	}
}