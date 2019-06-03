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
	public static BigDecimal WDup = NumberConfig.WD0;
	
	/**
	 * WUx 上层蓄水量
	 * @return
	 */
	public static void getResult() {
		BigDecimal PE = StepCommonUtil.getPE();
		// PE > 0
		if( NumberUtil.gt(PE, NumberConst.ZERO) ) {
			// WUx = WUup + PEx
			BigDecimal WUx = WUup.add(getPEx());
			// WUx > WUM
			if( NumberUtil.gt(WUx, NumberConfig.WUM) ) {
				// WU = WUM
				WU = NumberConfig.WUM;
			}
		// PE <= 0
		}else {
			// WUx = WUup + EKx
			BigDecimal WUx = WUup.add(getEKx());
		}
	}
	
	/**
	 * WLx 下层蓄水量
	 * @return
	 */
	public static BigDecimal getWLx() {
		// WLx = WLup + PEy
		return WLup.add(getPEy());
	}
	
	/**
	 * WDx 深层蓄水量
	 * @return
	 */
	public static BigDecimal getWDx() {
		// WDx = WDup + PEz
		return WDup.add(getPEz());
	}
	
	/**
	 * PEx 产流之后剩下的净雨
	 * @return
	 */
	public static BigDecimal getPEx() {
		// PEx = PE-R
		return StepCommonUtil.getPE().subtract(StepOneUtil.getR());
	}
	
	/**
	 * PEy 上层剩余的净雨
	 * @return
	 */
	public static BigDecimal getPEy() {
		// PEy = WUx - WUM
		return getWUx().subtract(NumberConfig.WUM);
	}
	
	/**
	 * PEz 下层剩余的净雨
	 * @return
	 */
	public static BigDecimal getPEz() {
		// PEz = WLx - WLM
		return getWLx().subtract(NumberConfig.WLM);
	}
	
	///////////////////下分支代码//////////////////////////
	
	/**
	 * WLx 下层蓄水量
	 * @return
	 */
	public static BigDecimal getWLx() {
		// WLx = WLup + WLup/WLM*EKy
		return WLup.add(WLup.divide(NumberConfig.WLM, NumberConst.DIGIT, NumberConst.MODE).multiply(getEKy()));
	}
	
	/**
	 * WDx 深层蓄水量
	 * @return
	 */
	public static BigDecimal getWDx() {
		// WDx = WDup + C * EKz
		return WDup.add(NumberConfig.C.multiply(getEKz()));
	}
	
	/**
	 * EKx 上层蒸发量
	 * @return
	 */
	public static BigDecimal getEKx() {
		// EKx = PE
		return StepCommonUtil.getPE();
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
	 * EKz 下层蒸发后，需要补充的蒸发量
	 * @return
	 */
	public static BigDecimal getEKz() {
		// EKz = WLx
		return getWLx();
	}
}
