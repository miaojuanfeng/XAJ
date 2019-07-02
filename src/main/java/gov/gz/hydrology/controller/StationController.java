package gov.gz.hydrology.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("cms/station")
public class StationController {

	@RequestMapping("{id}")
	public String index(@PathVariable("id") Integer id) {
		return "StationView";
	}
}
