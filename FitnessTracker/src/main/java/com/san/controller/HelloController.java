package com.san.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	
	
	@RequestMapping(value="/greeting")
	public String sayHello(Model model) {
		System.out.println("sayHello invoked from controller");
		model.addAttribute("greeting", "Hello Fitness world");
		return "hello";
		
	}
}
