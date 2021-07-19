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
import com.comento.service.CodeService;

@RestController
@RequestMapping("/code")
public class CodeController {
	
	@Autowired
	CodeService service;
	
	@RequestMapping("selectCodeInfo")
	@CrossOrigin
	public ResponseEntity<?> selectTest(@RequestBody CodeRequest reqeust) throws Exception {
		CodeResponse data = new CodeResponse();
		data.setList(service.selectTest(reqeust));
		return new ResponseEntity(data, HttpStatus.OK);
	}
}
