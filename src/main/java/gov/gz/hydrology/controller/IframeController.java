package gov.gz.hydrology.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("cms/iframe")
public class IframeController {

	@RequestMapping("{id}")
	public String index(@PathVariable("id") Integer id) {
		return "Iframe"+id;
	}
}
