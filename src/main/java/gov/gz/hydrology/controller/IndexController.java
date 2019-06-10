package gov.gz.hydrology.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import gov.gz.hydrology.utils.StepOneUtil;

@Controller
@RequestMapping("/")
public class IndexController {

	@RequestMapping("index")
	public String index() {
		
		System.out.println(StepOneUtil.getA());
		
		return "index";
	}
}
