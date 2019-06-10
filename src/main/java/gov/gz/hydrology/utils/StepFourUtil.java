package gov.gz.hydrology.utils;

import java.math.BigDecimal;

import gov.gz.hydrology.constant.NumberConst;

public class StepFourUtil {
	
	/**
	 * CS 壤中流消退系数
	 */
	public static BigDecimal CS = new BigDecimal("0.1");
	
	/**
	 * CG 地下径流消退系数
	 */
	public static BigDecimal CG = new BigDecimal("0.1");
	
	/**
	 * IMP 不透水面积比例
	 */
	public static BigDecimal IMP = new BigDecimal("0.1");
	
	///////////////////这个是哪里来的
	/**
	* Ft 流域面积
	* @return
	*/
	public static BigDecimal getFt() {
		return new BigDecimal("0.1");
	}
	
	///////////////////这个是哪里来的
	/**
	* DT 时段间隔DT
	* @return
	*/
	public static BigDecimal getDT() {
		return new BigDecimal("0.1");
	}
	
	///////////////////这个是哪里来的
	/**
	* Rd 直接径流
	* @return
	*/
	public static BigDecimal getRd() {
		return new BigDecimal("0.1");
	}
	
	///////////////////这个是哪里来的
	/**
	* Qssup 上一时段的壤中流
	* @return
	*/
	public static BigDecimal getQssup() {
		return new BigDecimal("0.1");
	}
	
	///////////////////这个是哪里来的
	/**
	* Qgup 上一时段的地下径流
	* @return
	*/
	public static BigDecimal getQgup() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * F 透水面积
	 * @return
	 */
	public static BigDecimal getF() {
		// F=Ft*(1-IMP)
		return getFt().multiply(NumberConst.ONE.subtract(IMP));
	}
	
	/**
	 * Qs 地表径流流量
	 * @return
	 */
	public static BigDecimal getQs() {
		// Qs=(Rs*F+Rd*Ft*IMP)/(3.6*DT)
		return (StepThreeUtil.Rs.multiply(getF()).add(getRd().multiply(getFt()).multiply(IMP))).divide(getDT().multiply(new BigDecimal("3.6")), NumberConst.DIGIT, NumberConst.MODE);
	}
	
	/**
	 * Qss 壤中流流量
	 * @return
	 */
	public static BigDecimal getQss() {
		// Qss=Cs*Qssup+(1-Cs)*Rss*F/(3.6*Dt)
		return CS.multiply(getQssup()).add(NumberConst.ONE.subtract(CS).multiply(StepThreeUtil.Rss).multiply(getF()).divide(getDT().multiply(new BigDecimal("3.6")), NumberConst.DIGIT, NumberConst.MODE));
	}
	
	/**
	 * Qg 地下径流流量
	 * @return
	 */
	public static BigDecimal getQg() {
		// Qg=Cg*Qgup+(1-Cg)*Rg*F/(3.6*Dt)
		return CG.multiply(getQgup()).add(NumberConst.ONE.subtract(CG).multiply(StepThreeUtil.Rg).multiply(getF()).divide(getDT().multiply(new BigDecimal("3.6")), NumberConst.DIGIT, NumberConst.MODE));
	}
	
	/////////////////////////////////////// 这里的算法有问题
	/**
	 * Qe 单元流域流量
	 * @return
	 */
	public static void getQe() {
		// 这里的算法有问题
		
	}
	
}
