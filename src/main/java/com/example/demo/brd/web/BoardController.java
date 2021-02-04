package com.example.demo.brd.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.brd.service.Board;
import com.example.demo.brd.service.BoardMapper;
import com.example.demo.brd.service.BoardService;


@RestController
@RequestMapping("/boards")
public class BoardController {
	@Autowired BoardMapper boardMapper;
	@Autowired BoardService boardService;
	
	@PostMapping("/writter")
    public Map<?, ?> writter(@RequestBody Board b) {
        var map = new HashMap<>();
        System.out.println("글쓰기 동작 중");
        map.put("message", (boardMapper.insertWritter(b) == 1) ? "SUCCESS" : "FAILURE");
        return map;
    }
	@GetMapping("/list")
    public Map<?,?> list(@PathVariable Board c){
		System.out.println("하...ㅠㅠㅠㅠㅠ리스트야 제발 여기까지만이라도 들어오자");
        var map = new HashMap<>();
        List<Board> list = boardService.list();
        System.out.println("목록 수: "+list.size());
        map.put("list", list);
        map.put("count", boardService.count());

        return map;
    }
	@PutMapping("/update")
	public Map<?, ?> update(@RequestBody Board b){
		var map = new HashMap<>();
		map.put("message",boardMapper.update(b) != null ? "SUCCESS" : "FAILURE");
		return map;
	}
	@DeleteMapping("/delete")
	public Map<?, ?> delete(@PathVariable Board b){
		var map = new HashMap<>();
		map.put("message",boardMapper.delete(b) == 1 ? "SUCCESS" : "FAILURE");
		return map;
	}
	

	
}
