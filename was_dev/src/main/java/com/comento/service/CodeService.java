package com.comento.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.comento.dto.CodeRequest;
import com.comento.dto.NoticeRequest;
import com.comento.repository.CodeRepository;
import com.comento.repository.NoticeRepository;
import com.comento.vo.CodeInfoVO;
import com.comento.vo.CodeListVO;
import com.comento.vo.NoticeVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class CodeService {
	private static final Logger LOGGER = LoggerFactory.getLogger(CodeService.class);

	@Autowired
	CodeRepository repository;

	public List<CodeInfoVO> selectCodeInfo(CodeRequest reqeust){
		return repository.selectCodeInfo(reqeust);
	}
	
	public List<CodeListVO> selectCodeList(CodeRequest.detail reqeust){
		return repository.selectCodeList(reqeust);
	}
}