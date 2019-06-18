package gov.gz.hydrology.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping("login")
	public String login() {
		return "user/loginView";
	}
	
	@RequestMapping("register")
	public String register() {
		return "user/registerView";
	}
}
