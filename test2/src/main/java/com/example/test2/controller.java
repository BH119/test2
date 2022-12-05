package com.example.test2;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.test2.dto.boardDto;
import com.example.test2.dao.boardDao;

@Controller
public class controller {
	
	@Autowired
	boardDao iBoardDao;
	
	
	@RequestMapping("/")
	public String main(Model model) {
		
		List<boardDto> list = iBoardDao.boardList();
		model.addAttribute("boardList", list);
		model.addAttribute("mainPage", "main.jsp");
		
		return "index";
		
	}
	
	@RequestMapping("/writeForm")
	public String writeForm(Model model) {
		
		model.addAttribute("mainPage", "writeForm.jsp");
		
		return "index";
		
	}
	
	@RequestMapping("/writeAction")
	public String writeAction(
			@RequestParam("board_title" ) String board_title,	
			@RequestParam("board_content") String board_content,
			@RequestParam("board_name") String board_name,
			Model model) {
		
		System.out.println(board_title);
		iBoardDao.writeAction(board_title, board_content,board_name);
		
		
		return "redirect:/";
		
	}
	
	@RequestMapping("/boardView")
	public String boardView(
			@RequestParam("board_idx") String board_idx,
			Model model) {
		
		boardDto dto = iBoardDao.boardView(board_idx);
		model.addAttribute("dto",dto);
		model.addAttribute("mainPage","boardView.jsp");
		
		return "index";
		
	}
	
	
	
	
	
	
	@RequestMapping("/updateAction")
	public String updateAction(
			@RequestParam("board_title" ) String board_title,	
			@RequestParam("board_content") String board_content,
			@RequestParam("board_name") String board_name,
			@RequestParam("board_idx") String board_idx,
			Model model) {
		
		System.out.println(board_title);
		iBoardDao.updateAction(board_title, board_content,board_name,board_idx);
		
		
		return "redirect:/";
		
	}
	
	@RequestMapping("/deleteAction")
	public String deleteAction(
			@RequestParam("board_idx") String board_idx) {
		
		iBoardDao.deleteAction(board_idx);
		
		return "redirect:/";
		
	}
	
	
	
	
	
	
	

}
