package gov.gz.hydrology.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("cms/station")
public class StationController {

	@RequestMapping("index")
	public String index() {
		return "iframe/StationView";
	}
}
