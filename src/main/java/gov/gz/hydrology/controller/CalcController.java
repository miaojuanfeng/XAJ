package gov.gz.hydrology.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("cms/calc")
public class CalcController {

	@RequestMapping("index")
	public String index() {
		return "CalcView";
	}
}
