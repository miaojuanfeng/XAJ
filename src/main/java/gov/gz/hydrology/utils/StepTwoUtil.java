package gov.gz.hydrology.utils;

import java.math.BigDecimal;

public class StepTwoUtil {
	
	/**
	 * PEx 产流之后剩下的净雨
	 * @return
	 */
	public static BigDecimal getPEx(BigDecimal B) {
		// PEx = PE - R
		return StepCommonUtil.getPE().subtract(StepOneUtil.getR(B));
	}
	
	///////////////////这个是哪里来的
	/**
	 * WUup 上次计算上层蓄水量
	 * @return
	 */
	public static BigDecimal getWUup() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * WUx 上层蓄水量
	 * @return
	 */
	public static BigDecimal getWUx(BigDecimal B) {
		return getWUup().add(getPEx(B));
	}
}
