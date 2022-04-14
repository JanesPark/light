package com.cos.light.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LightControllerTest {
	@GetMapping("/light/hello")
	public String hello() {
		return "<h1>hello spring boot</h1>";
	}
}
