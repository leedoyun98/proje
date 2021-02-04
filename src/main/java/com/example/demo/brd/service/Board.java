package com.example.demo.brd.service;

import org.springframework.context.annotation.Lazy; 
import org.springframework.stereotype.Component;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Data @AllArgsConstructor @Lazy @NoArgsConstructor
public class Board {
	private int boardNum;
	private String userid, password, title, content, writtenDate, updatedDate;

	
}
