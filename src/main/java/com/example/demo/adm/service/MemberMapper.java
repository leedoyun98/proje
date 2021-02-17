package com.example.demo.adm.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberMapper {

	public int register(Member member);

	public int selectById(String id);

	public List<Member> getList();

	public void updateMember(Member member);

	public void deleteMember(Member member);


	
	

}
