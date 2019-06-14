package gov.gz.hydrology.utils;

import java.math.BigDecimal;

import gov.gz.hydrology.constant.NumberConfig;
import gov.gz.hydrology.constant.NumberConst;

public class StepFourUtil {
	
	/**
	 * Qe 单元流域流量
	 */
	public static BigDecimal Qe;
	
	public static BigDecimal Qeup;
	
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
		return NumberConfig.Ft.multiply(NumberConst.ONE.subtract(NumberConfig.IM));
	}
	
	/**
	 * Qs 地表径流流量
	 * @return
	 */
	public static BigDecimal getQs() {
		// Qs=(Rs*F+Rd*Ft*IMP)/(3.6*DT)
		return (StepThreeUtil.Rs.multiply(getF()).add(StepOneUtil.Rd.multiply(NumberConfig.Ft).multiply(NumberConfig.IM))).divide(NumberConfig.DT.multiply(new BigDecimal("3.6")), NumberConst.DIGIT, NumberConst.MODE);
	}
	
	/**
	 * Qss 壤中流流量
	 * @return
	 */
	public static BigDecimal getQss() {
		// Qss=Cs*Qssup+(1-Cs)*Rss*F/(3.6*Dt)
		return NumberConfig.CS.multiply(getQssup()).add(NumberConst.ONE.subtract(NumberConfig.CS).multiply(StepThreeUtil.Rss).multiply(getF()).divide(NumberConfig.DT.multiply(new BigDecimal("3.6")), NumberConst.DIGIT, NumberConst.MODE));
	}
	
	/**
	 * Qg 地下径流流量
	 * @return
	 */
	public static BigDecimal getQg() {
		// Qg=Cg*Qgup+(1-Cg)*Rg*F/(3.6*Dt)
		return NumberConfig.CG.multiply(getQgup()).add(NumberConst.ONE.subtract(NumberConfig.CG).multiply(StepThreeUtil.Rg).multiply(getF()).divide(NumberConfig.DT.multiply(new BigDecimal("3.6")), NumberConst.DIGIT, NumberConst.MODE));
	}
	
	/////////////////////////////////////// 这里的算法有问题
	
	public static void getResult() {
		// 这里的算法有问题
		Qe = NumberConst.ZERO;
	}
	
}
