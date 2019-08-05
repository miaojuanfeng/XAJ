package gov.gz.hydrology.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import gov.gz.hydrology.utils.DateUtil;

@Controller
@RequestMapping("cms/station")
public class StationController {

	@RequestMapping("{id}")
	public String index(ModelMap map, @PathVariable("id") Integer id) {
		map.put("date", DateUtil.getDate());
		map.put("station", id);
		return "StationView";
	}
}
