package gov.gz.hydrology.utils;

import java.math.BigDecimal;

import gov.gz.hydrology.constant.CommonConst;

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
	
	///////////////////这个是哪里来的
	/*
	 * C 深层蒸散发系数
	 */
	public static BigDecimal getC() {
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
		return getWLx(B).subtract(StepOneUtil.getWLM());
	}
	
	/**
	 * WDx 深层蓄水量
	 * @return
	 */
	public static BigDecimal getWDx(BigDecimal B) {
		// WDx = WDup + PEz
		return getWDup().add(getPEz(B));
	}
	
	///////////////////下分支代码//////////////////////////
	
	/**
	 * EKx 上层蒸发量
	 * @return
	 */
	public static BigDecimal getEKx() {
		// EKx = PE
		return StepCommonUtil.getPE();
	}
	
	/**
	 * WUx 上层蓄水量
	 * @return
	 */
	public static BigDecimal getWUx() {
		// WUx = WUup + EKx
		return getWUup().add(getEKx());
	}
	
	/**
	 * EKy 上层蒸发后，需要下层补充的蒸发量
	 * @return
	 */
	public static BigDecimal getEKy() {
		// EKy = WUx
		return getWUx();
	}
	
	/**
	 * WLx 下层蓄水量
	 * @return
	 */
	public static BigDecimal getWLx() {
		// WLx = WLup + WLup/WLM*EKy
		return getWLup().add(getWLup().divide(StepOneUtil.getWLM(), CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE).multiply(getEKy()));
	}
	
	/**
	 * EKz 下层蒸发后，需要补充的蒸发量
	 * @return
	 */
	public static BigDecimal getEKz() {
		// EKz = WLx
		return getWLx();
	}
	
	/**
	 * WDx 深层蓄水量
	 * @return
	 */
	public static BigDecimal getWDx() {
		// WDx = WDup + C * EKz
		return getWDup().add(getC().multiply(getEKz()));
	}
}
