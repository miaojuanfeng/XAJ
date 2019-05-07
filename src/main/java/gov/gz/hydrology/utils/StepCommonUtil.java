package gov.gz.hydrology.utils;

import java.math.BigDecimal;

public class StepCommonUtil {
	
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
		return getP().subtract(getEk());
	}
}
