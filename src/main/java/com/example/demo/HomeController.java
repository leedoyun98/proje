package com.example.demo;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes({"c"})
public class HomeController {
	@Autowired HttpSession session;
	@Autowired HttpServletRequest request;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	 @GetMapping("/")
	    public String home(HttpSession session, HttpServletRequest request) {
	    	String c = request.getContextPath();
	    	session.setAttribute("c", c);
	    	session.setAttribute("cmm", c+"/resources/cmm");
	    	
    System.out.println("메인");
	        return "home";
	    }
	@GetMapping("/admin/{page}")
    public String admin(@PathVariable String page) {
		 System.out.println("이동: " + page);
        return String.format("admin:%s", page);
    }
	
	
	
}
