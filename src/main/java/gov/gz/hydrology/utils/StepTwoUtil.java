package gov.gz.hydrology.utils;

import java.math.BigDecimal;

import gov.gz.hydrology.constant.NumberConfig;
import gov.gz.hydrology.constant.NumberConst;

public class StepTwoUtil {
	
	/**
	 * 上层蓄水量最终结果
	 */
	public static BigDecimal WU;
	
	/**
	 * 下层蓄水量最终结果
	 */
	public static BigDecimal WL;
	
	/**
	 * 深层蓄水量最终结果
	 */
	public static BigDecimal WD;
	
	/**
	 * WUup 上次计算上层蓄水量
	 */
	public static BigDecimal WUup = NumberConfig.WU0;
	
	/**
	* WLup 上次计算下层蓄水量
	*/
	public static BigDecimal WLup = NumberConfig.WL0;
	
	/**
	* WDup 上次计算深层蓄水量
	*/
	public static BigDecimal getWDup = NumberConfig.WD0;
	
	/**
	 * PEx 产流之后剩下的净雨
	 * @return
	 */
	public static BigDecimal getPEx() {
		// PEx = PE-R
		return StepCommonUtil.getPE().subtract(StepOneUtil.getR());
	}
	
	/**
	 * WUx 上层蓄水量
	 * @return
	 */
	public static BigDecimal getWUx() {
		return WUup.add(getPEx());
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
		return getWLup().add(getWLup().divide(StepOneUtil.getWLM(), NumberConst.DIGIT, NumberConst.MODE).multiply(getEKy()));
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
