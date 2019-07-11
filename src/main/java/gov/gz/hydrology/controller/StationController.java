package gov.gz.hydrology.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("cms/station")
public class StationController {

	@RequestMapping("{id}")
	public String index(ModelMap map, @PathVariable("id") Integer id) {
		map.put("date", new SimpleDateFormat("HH:mm   EEEE").format(new Date()));
		map.put("station", id);
		return "StationView";
	}
}
