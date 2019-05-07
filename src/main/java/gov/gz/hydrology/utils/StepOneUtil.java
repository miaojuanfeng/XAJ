package gov.gz.hydrology.utils;

import java.math.BigDecimal;

import org.springframework.beans.factory.wiring.BeanWiringInfo;

import gov.gz.hydrology.constant.CommonConst;

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
		return new BigDecimal("0.2");
	}
	
	/**
	 * WLM 下层土壤蓄水容量
	 * @return
	 */
	public static BigDecimal getWLM() {
		return new BigDecimal("0.2");
	}
	
	/**
	 * WDM 深层土壤蓄水容量
	 * @return
	 */
	public static BigDecimal getWDM() {
		return new BigDecimal("0.2");
	}
	
	/**
	 * W0  流域初始平均蓄水量
	 * @return
	 */
	public static BigDecimal getW0() {
		// W0 = WU0 + WL0 + WD0
		return getWU0().add(getWL0().add(getWD0()));
	}
	
	/**
	 * Wm 流域平均蓄水容量
	 * @return
	 */
	public static BigDecimal getWm() {
		// Wm = WUM + WLM + WDM
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
	
	/**
	 * A
	 */
	public static BigDecimal getA(BigDecimal B) {
		// A = Wmm*[1-(1-W0/Wm)^(1/B+1)]
		BigDecimal one = new BigDecimal(1);
		BigDecimal power = one.divide(B, CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE).add(one);
		BigDecimal base = one.subtract(getW0().divide(getWm(), CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE));
		return getWmm(B).multiply(one.subtract(new BigDecimal(Math.pow(base.doubleValue(), power.doubleValue()))));
	}
	
	/**
	 * P 时刻雨量
	 * @return
	 */
	public static BigDecimal getP() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * K 蒸散发折算系数
	 * @return
	 */
	public static BigDecimal getK() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * E 蒸发量
	 * @return
	 */
	public static BigDecimal getE() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * Ek 蒸发量
	 * @return
	 */
	public static BigDecimal getEk() {
		// Ek = K * E
		return getK().multiply(getE());
	}
	
	/**
	 * PE 净雨
	 * @return
	 */
	public static BigDecimal getPE() {
		// PE = P - Ek
		return getK().multiply(getE());
	}
}
