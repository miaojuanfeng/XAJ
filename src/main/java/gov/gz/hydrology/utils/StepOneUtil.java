package gov.gz.hydrology.utils;

import java.math.BigDecimal;

public class StepOneUtil {

	/**
	 * WU0 上层土壤蓄水容量初始含水量
	 * @return
	 */
	public static BigDecimal getWU0() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * WL0 下层土壤蓄水容量初始含水量
	 * @return
	 */
	public static BigDecimal getWL0() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * WD0 深层土壤蓄水容量初始含水量
	 * @return
	 */
	public static BigDecimal getWD0() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * WUM 上层土壤蓄水容量
	 * @return
	 */
	public static BigDecimal getWUM() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * WLM 下层土壤蓄水容量
	 * @return
	 */
	public static BigDecimal getWLM() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * WDM 深层土壤蓄水容量
	 * @return
	 */
	public static BigDecimal getWDM() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * W0  流域初始平均蓄水量
	 * @return
	 */
	public static BigDecimal getW0() {
		// 求和
		return getWU0().add(getWL0().add(getWD0()));
	}
	
	/**
	 * Wm 流域平均蓄水容量
	 * @return
	 */
	public static BigDecimal getWm() {
		// 求和
		return getWUM().add(getWLM().add(getWDM()));
	}
	
	/**
	 * Wmm 流域内点最大的点蓄水容量
	 * @param B 流域张力水蓄水容量面积分布曲线指数
	 * @return
	 */
	public static BigDecimal getWmm(BigDecimal B) {
		// Wmm = Wm*(1+B)
		return getWm().multiply(B.add(new BigDecimal("1")));
	}
}
