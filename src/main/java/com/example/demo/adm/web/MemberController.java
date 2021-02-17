package com.example.demo.adm.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.adm.service.Member;
import com.example.demo.adm.service.MemberMapper;

@RequestMapping(value = { "/managers" })
@RestController
public class MemberController {

	@Autowired
	Member member;
	@Autowired
	MemberMapper memberMapper;

	// 회원등록
	@PostMapping("/register")
	public Map<?, ?> register(@RequestBody Member member) {
		System.out.println("rest controller");
		System.out.println("Member Register");
		var map = new HashMap();
		map.put("message", memberMapper.register(member)== 1 ? "SUCCESS": "FAILURE");
		return map;
	}

	@PostMapping("/login")
	public Map<?, ?> login(@RequestBody Member member) {
		member.toString();
		var map = new HashMap();
		map.put("message", (member != null) ? "SUCCESS" : "FAILURE");
		map.put("manager", member);
		return map;
	}

//	@PostMapping("/select")
//	public Member selectById(String id) {
//		System.out.println("Member login");
//		return (memberMapper.selectById(id) == 1) ? "SUCCESS" : "FAILURE";
//	}

	@PostMapping("/update")
	public void updateMember(Member member) {
		System.out.println("Member update!");
		memberMapper.updateMember(member);
	
	}

	@DeleteMapping("/delete")
	public void deleteMember(Member member) {
		System.out.println("Member delete:");
		memberMapper.deleteMember(member);
	}

	@GetMapping("/list")
	public List<?> listMember() {
		return memberMapper.getList();
	}

}
