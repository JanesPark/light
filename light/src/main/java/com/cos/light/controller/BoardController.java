package com.cos.light.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.light.service.BoardService;

@Controller
public class BoardController {
	
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping({"","/"})
	public String index(Model model, @PageableDefault(size = 5, sort = "id",
	direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("boards",boardService.WRITELIST(pageable));
		return "index";
	}
	
	@GetMapping("/board/{id}/updateForm")
	public String updateForm(@PathVariable int id, Model model) {
		model.addAttribute("board",boardService.WRITEDETAIL(id));
		return "board/updateForm";
	}
	
	@GetMapping("/board/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("board",boardService.WRITEDETAIL(id));
		return "board/detail";
	}
	
	
	@GetMapping({"/board/saveForm"})
	public String saveForm() {
		return "board/saveForm";
	}
}
