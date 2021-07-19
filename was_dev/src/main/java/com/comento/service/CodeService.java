package com.comento.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.comento.dto.CodeRequest;
import com.comento.repository.CodeRepository;
import com.comento.vo.CodeVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class CodeService {
	private static final Logger LOGGER = LoggerFactory.getLogger(CodeService.class);

	@Autowired
	CodeRepository repository;

	public List<CodeVO> selectTest(CodeRequest reqeust){
		return repository.selectTest(reqeust);
	}
}