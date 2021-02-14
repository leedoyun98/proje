package com.example.demo.log.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.brd.service.Board;
import com.example.demo.log.service.Login;
import com.example.demo.log.service.LoginMapper;
@RestController
@RequestMapping("/logins")
public class LoginController {
	@Autowired LoginMapper loginMapper;
	@PostMapping("")
    public Map<?, ?> register(@RequestBody Login l) {
        var map = new HashMap<>();
        map.put("message", (loginMapper.insert(l) == 1) ? "SUCCESS" : "FAILURE");
        return map;
    }
	
	@PostMapping("/login")
	public Map<?, ?> login(@RequestBody Login l) {
		 var map = new HashMap<>();
		 Login result = loginMapper.login(l);
	        map.put("message", result != null?"SUCCESS":"FAILURE");
	        return map;
	}
}
