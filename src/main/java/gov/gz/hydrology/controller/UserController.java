package gov.gz.hydrology.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("cms")
public class UserController {

	@RequestMapping("login")
	public String login() {
		return "LoginView";
	}
	
	@RequestMapping("register")
	public String register() {
		return "user/RegisterView";
	}
	
	@RequestMapping("dashboard")
	public String dashboard() {
		return "IndexView";
	}
	
	@RequestMapping("welcome")
	public String welcome() {
		return "demo/WelcomeView";
	}
}
