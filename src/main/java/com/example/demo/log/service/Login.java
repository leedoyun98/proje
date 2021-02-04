package com.example.demo.log.service;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class Login {
	private int loginNum;
	private String userid, password;

}
