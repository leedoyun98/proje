package com.example.demo;

import javax.servlet.http.HttpServletRequest;   
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({"ctx","board","login"})
public class HomeController {
	@Autowired HttpSession session;
	@Autowired HttpServletRequest request;
	
	 @GetMapping("/")
	    public String index(HttpSession session, HttpServletRequest request) {
	    	String ctx = request.getContextPath();
	    	session.setAttribute("ctx", ctx);
	    	session.setAttribute("board", ctx+"/resources/board");
	    	session.setAttribute("login", ctx+"/resources/login");
	    	 System.out.println("메인");
	        return "main";
	    }
	@GetMapping("/admin/{page}")
    public String admin(@PathVariable String page) {
		 System.out.println("이동: " +page);
        return String.format("admin:%s",page);
    }
	
	@GetMapping("/login/{page}")
    public String login(@PathVariable String page) {
		 System.out.println("로그인컨트: " +page);
        return String.format("login:%s",page);
    }
	
	
}
