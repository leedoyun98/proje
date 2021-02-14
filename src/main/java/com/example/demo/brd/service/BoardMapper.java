package com.example.demo.brd.service;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface BoardMapper {


	public int insertWritter(Board b);

	public List<Board> selectAll();

	public int count();

	public int update(Board b);

	public int delete(Board b);

	public Board selectById(String title);


}
