package com.cos.light.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.light.Dto.ResponseDto;
import com.cos.light.model.myUsers;
import com.cos.light.service.UserService;

@RestController
public class UserApiController {
	
	@Autowired
	private UserService userService;
	
	@PostMapping("/auth/joinProc")
	public ResponseDto<Integer> save(@RequestBody myUsers users) {
		System.out.println("USerApiController호출됨");
		//users.setRoles(RoleType.USER);
		
		userService.REGISTER(users);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	@PutMapping("/user")
	public ResponseDto<Integer> update(@RequestBody myUsers user) {
		userService.USERUPDATE(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
		
}
