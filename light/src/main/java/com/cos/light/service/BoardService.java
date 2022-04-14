package com.cos.light.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.light.model.myBoards;
import com.cos.light.model.myUsers;
import com.cos.light.repository.BoardRepository;

@Service
public class BoardService {

	@Autowired
	private BoardRepository boardRepository;
	
	@Transactional
	public void WRITE(myBoards board, myUsers user) {
		board.setCount(0);
		board.setUsers(user);
		boardRepository.save(board);
	}
	
	@Transactional(readOnly=true)
	public Page<myBoards> WRITELIST(Pageable pageable){
		return boardRepository.findAll(pageable);
	}
	
	@Transactional(readOnly=true)
	public myBoards WRITEDETAIL(int id) {
		return boardRepository.findById(id)
				.orElseThrow(()->{
					return new IllegalArgumentException("Failed : cannot find the ID.");
				});
	}
	
	@Transactional
	public void DELETE(int id) {
		boardRepository.deleteById(id);
	}
	
	@Transactional
	public void UPDATE(int id, myBoards requestBoard) {
		myBoards board = boardRepository.findById(id).orElseThrow(()-> {
			return new IllegalArgumentException("Failed : cannot find the user id.");
		});
	board.setTitle(requestBoard.getTitle());
	board.setContent(requestBoard.getContent());
	}
}
