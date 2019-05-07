package gov.gz.hydrology.controller;

import java.math.BigDecimal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import gov.gz.hydrology.utils.StepOneUtil;

@Controller
@RequestMapping("/")
public class IndexController {

	@RequestMapping("index")
	@ResponseBody
	public String index() {
		
		System.out.println(StepOneUtil.getA(new BigDecimal(1)));
		
		return "Ok";
	}
}
