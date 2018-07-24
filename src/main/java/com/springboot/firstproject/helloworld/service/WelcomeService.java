package com.springboot.firstproject.helloworld.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;


@Component
public class WelcomeService {

	@Value("${welcome.titre}")
	public String titre;
	@Value("${welcome.message}")
	public String message;
}
