package gov.gz.hydrology.utils;

import java.math.BigDecimal;

public class StepTwoUtil {
	
	public static BigDecimal WU;
	public static BigDecimal WL;
	public static BigDecimal WD;
	
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
	
	///////////////////这个是哪里来的
	/**
	* WLup 上次计算下层蓄水量
	* @return
	*/
	public static BigDecimal getWLup() {
		return new BigDecimal("0.1");
	}
	
	///////////////////这个是哪里来的
	/**
	* WDup 上次计算深层蓄水量
	* @return
	*/
	public static BigDecimal getWDup() {
	return new BigDecimal("0.1");
	}
	
	/**
	 * WUx 上层蓄水量
	 * @return
	 */
	public static BigDecimal getWUx(BigDecimal B) {
		return getWUup().add(getPEx(B));
	}
	
	/**
	 * PEy 上层剩余的净雨
	 * @return
	 */
	public static BigDecimal getPEy(BigDecimal B) {
		// PEy = WUx - WUM
		return getWUx(B).subtract(StepOneUtil.getWUM());
	}
	
	/**
	 * WLx 下层蓄水量
	 * @return
	 */
	public static BigDecimal getWLx(BigDecimal B) {
		// WLx = WLup + PEy
		return getWLup().add(getPEy(B));
	}
	
	/**
	 * PEz 下层剩余的净雨
	 * @return
	 */
	public static BigDecimal getPEz(BigDecimal B) {
		// PEz = WLx - WLM
		return getWLx(B)B.subtract(StepOneUtil.getWLM());
	}
	
	/**
	 * WDx 深层蓄水量
	 * @return
	 */
	public static BigDecimal getWDx(BigDecimal B) {
		// WDx = WDup + PEz
		return getWDup().add(getPEz(B));
	}
}
