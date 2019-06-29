package gov.gz.hydrology.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("cms")
public class UserController {

	@RequestMapping("login")
	public String login() {
		return "LoginView";
	}
	
//	@RequestMapping("register")
//	public String register() {
//		return "user/RegisterView";
//	}
	
	@RequestMapping("dashboard")
	public String dashboard() {
		return "IndexView";
	}
	
	@RequestMapping("welcome")
	public String welcome() {
		return "iframe/WelcomeView";
	}
	
	@RequestMapping("button")
	public String button() {
		return "demo/ButtonView";
	}
	
	@RequestMapping("form")
	public String form() {
		return "demo/FormView";
	}
	
	@RequestMapping("table")
	public String table() {
		return "demo/TableView";
	}
	
	@RequestMapping("tabcard")
	public String tabcard() {
		return "demo/TabCardView";
	}
	
	@RequestMapping("progressbar")
	public String progressbar() {
		return "demo/ProgressBarView";
	}
	
	@RequestMapping("foldingpanel")
	public String foldingpanel() {
		return "demo/FoldingPanelView";
	}
	
	@RequestMapping("auxiliar")
	public String auxiliar() {
		return "demo/AuxiliarView";
	}
	
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String getLogin() {
		return "LoginView";
	}
	
	@RequestMapping("register")
	public String register() {
		return "demo/RegisterView";
	}
	
	@RequestMapping("login2")
	public String login2() {
		return "demo/LoginView2";
	}
	
	@RequestMapping("map")
	public String map() {
		return "demo/MapView";
	}
	
	@RequestMapping("addedit")
	public String addedit() {
		return "demo/AddEditView";
	}
	
	@RequestMapping("datatable")
	public String datatable() {
		return "demo/DataTableView";
	}
	
	@RequestMapping("tabletree")
	public String tabletree() {
		return "demo/TableTreeView";
	}
	
	@RequestMapping("error404")
	public String error404() {
		return "demo/error404";
	}
	
	@RequestMapping("tips")
	public String tips() {
		return "demo/TipsView";
	}
	
}
