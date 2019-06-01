package gov.gz.hydrology.utils;

import java.math.BigDecimal;

import gov.gz.hydrology.constant.NumberConst;

public class StepFiveUtil {
	
	/**
	 * KE 蓄量常数
	 */
	public static BigDecimal KE = new BigDecimal("0.1");
	
	/**
	 * XE 流量比重因子
	 */
	public static BigDecimal XE = new BigDecimal("0.1");
	
	/**
	 * DT 滞时
	 */
	public static BigDecimal DT = new BigDecimal("0.1");
	
	///////////////////这个是哪里来的
	/**
	* Qe 当前时刻输入流量
	* @return
	*/
	public static BigDecimal getQe() {
		return new BigDecimal("0.1");
	}
	
	///////////////////这个是哪里来的
	/**
	* Qeup 上一时刻输入流量
	* @return
	*/
	public static BigDecimal getQeup() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * C0   参数
	 * @return
	 */
	public static BigDecimal getC0() {
		// C0=(0.5*DT-KE*XE)/(0.5*DT+KE-KE*XE)
		BigDecimal base = DT.multiply(new BigDecimal("0.5")).subtract(KE.multiply(XE));
		BigDecimal divisor = DT.multiply(new BigDecimal("0.5")).add(KE).subtract(KE.multiply(XE));
		return base.divide(divisor, NumberConst.DECIMAL_DIGIT, NumberConst.DECIMAL_MODE);
	}
	
	/**
	 * C1   参数
	 * @return
	 */
	public static BigDecimal getC1() {
		// C1=(0.5*DT+KE*XE)/(0.5*DT+KE-KE*XE)
		BigDecimal base = DT.multiply(new BigDecimal("0.5")).add(KE.multiply(XE));
		BigDecimal divisor = DT.multiply(new BigDecimal("0.5")).add(KE).subtract(KE.multiply(XE));
		return base.divide(divisor, NumberConst.DECIMAL_DIGIT, NumberConst.DECIMAL_MODE);
	}
	
	/**
	 * C2   参数
	 * @return
	 */
	public static BigDecimal getC2() {
		// C2=(-0.5*DT+KE-KE*XE)/(0.5*DT+KE-KE*XE)
		BigDecimal base = DT.multiply(new BigDecimal("-0.5")).add(KE).subtract(KE.multiply(XE));
		BigDecimal divisor = DT.multiply(new BigDecimal("0.5")).add(KE).subtract(KE.multiply(XE));
		return base.divide(divisor, NumberConst.DECIMAL_DIGIT, NumberConst.DECIMAL_MODE);
	}
	
	/**
	 * Qt 预报站（断面）流量
	 * @return
	 */
	public static BigDecimal getQt() {
		// Qt=C0*Qe+C1*Qeup+C2*Qeup
		return getC0().multiply(getQe()).add(getC1().multiply(getQeup())).add(getC2().multiply(getQeup()));
	}
}
