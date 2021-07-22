package com.comento.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.comento.dto.CodeRequest;
import com.comento.dto.CodeResponse;
import com.comento.dto.NoticeRequest;
import com.comento.service.CodeService;
import com.comento.service.NoticeService;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
@RequestMapping("/code")
public class CodeController {
	
	@Autowired
	CodeService service;
	
	@RequestMapping("selectCodeInfo")
	@CrossOrigin
	public ResponseEntity<?> selectCodeInfo(@RequestBody CodeRequest reqeust) throws Exception {
		log.debug("test");
		log.info("test");
		log.error("log");
		CodeResponse data = new CodeResponse();
		data.setList(service.selectCodeInfo(reqeust));
		return new ResponseEntity(data, HttpStatus.OK);
	}
	
	@RequestMapping("selectCodeList")
	@CrossOrigin
	public ResponseEntity<?> selectCodeList(@RequestBody CodeRequest.detail reqeust) throws Exception {
		CodeResponse.CodeListResponse data = new CodeResponse.CodeListResponse();
		data.setList(service.selectCodeList(reqeust));
		return new ResponseEntity(data, HttpStatus.OK);
	}
}
