package gov.gz.hydrology.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import gov.gz.hydrology.constant.NumberConfig;
import gov.gz.hydrology.utils.StepCommonUtil;
import gov.gz.hydrology.utils.StepOneUtil;

@Controller
@RequestMapping("/")
public class IndexController {

	@RequestMapping("index")
	public String index(ModelMap map) {
		
		System.out.println(StepOneUtil.getA());
		
		map.put("para", getPara());
		map.put("stepCommon", getStepCommon());
		map.put("stepOne", getStepOne());
		
		return "index";
	}
	
	private Map<String, Object> getPara(){
		Map<String, Object> para = new HashMap<String, Object>();
		para.put("WU0", NumberConfig.WU0);
		para.put("WL0", NumberConfig.WL0);
		para.put("WD0", NumberConfig.WD0);
		para.put("QRSS", NumberConfig.QRSS);
		para.put("QRG", NumberConfig.QRG);
		para.put("WUM", NumberConfig.WUM);
		para.put("WLM", NumberConfig.WLM);
		para.put("WDM", NumberConfig.WDM);
		para.put("B", NumberConfig.B);
		para.put("K", NumberConfig.K);
		para.put("C", NumberConfig.C);
		para.put("SM", NumberConfig.SM);
		para.put("EX", NumberConfig.EX);
		para.put("KSS", NumberConfig.KSS);
		para.put("KG", NumberConfig.KG);
		para.put("IM", NumberConfig.IM);
		para.put("XE", NumberConfig.XE);
		para.put("KE", NumberConfig.KE);
		para.put("DT", NumberConfig.DT);
		return para;
	}
	
	private Map<String, Object> getStepCommon(){
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("Ek", StepCommonUtil.getEk());
		data.put("PE", StepCommonUtil.getPE());
		return data;
	}
	
	private Map<String, Object> getStepOne(){
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("W0", StepOneUtil.getW0());
		data.put("Wm", StepOneUtil.getWm());
		data.put("Wmm", StepOneUtil.getWmm());
		data.put("A", StepOneUtil.getA());
		data.put("Rd", StepOneUtil.getRd());
		
		data.put("R", StepOneUtil.getR());
		return data;
	}
}
