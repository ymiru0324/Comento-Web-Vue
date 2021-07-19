package com.comento.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.comento.dto.CodeListRequest;
import com.comento.dto.CodeListResponse;
import com.comento.service.CodeListService;

@RestController
@RequestMapping("/code")
public class CodeListController {
	
	@Autowired
	CodeListService service;
	
	@RequestMapping("selectCodeList")
	@CrossOrigin
	public ResponseEntity<?> selectTest(@RequestBody CodeListRequest reqeust) throws Exception {
		CodeListResponse data = new CodeListResponse();
		data.setList(service.selectTest(reqeust));
		return new ResponseEntity(data, HttpStatus.OK);
	}
}
