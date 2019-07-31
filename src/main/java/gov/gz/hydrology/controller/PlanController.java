package gov.gz.hydrology.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("cms/plan")
public class PlanController {

	@RequestMapping("index")
	public String index(ModelMap map) {
		map.put("date", new SimpleDateFormat("HH:mm   EEEE").format(new Date()));
		
		return "PlanView";
	}
}
