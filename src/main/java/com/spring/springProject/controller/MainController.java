package com.spring.springProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/main")
public class MainController {

	@RequestMapping(value = "/mainLogin", method = RequestMethod.GET)
	public String mainLogin() {
		return "main/mainLogin";
	}
}
