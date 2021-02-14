package com.example.demo.brd.service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
	@Autowired BoardMapper boardMapper;


	public int count() {
		return boardMapper.count();
	}






	
	
}
