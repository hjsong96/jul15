package com.hadine.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;

	@GetMapping("/board")
	public String board(Model model) {
		List<BoardDTO> list = service.boardList();

		if (list.size() > 0) {
			model.addAttribute("list", list);
			return "board";
		} else {
			return "redirect:/";
		} 
	}
	
	@GetMapping("/detail")
	public String detail(HttpServletRequest request) {
		String bno = request.getParameter("bno");
		return "detail";
	}
	
	
}
