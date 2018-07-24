package com.springboot.firstproject.helloworld.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springboot.firstproject.helloworld.service.WelcomeService;


@Controller
public class WelcomeController {

	@Autowired
	private WelcomeService service;
	
	@RequestMapping("/")
	public String welcomeshow(Map<String,Object> model) {
		model.put("titre", service.titre);
		model.put("message", service.message);
		return "welcome";
	}
	
	@RequestMapping("/cytoscape")
	public String cytoscapeshow() {
		
		return "cytoscape";
	}
}
