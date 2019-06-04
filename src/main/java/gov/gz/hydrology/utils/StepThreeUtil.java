package gov.gz.hydrology.utils;

import java.math.BigDecimal;

import gov.gz.hydrology.constant.NumberConfig;
import gov.gz.hydrology.constant.NumberConst;

public class StepThreeUtil {
	
	/**
	 * Rs 地表径流
	 */
	public static BigDecimal Rs;
	/**
	 * Rss 壤中流
	 */
	public static BigDecimal Rss;
	/**
	 * Rg 地下径流
	 */
	public static BigDecimal Rg;

	///////////////////这个是哪里来的
	/**
	* Sup 上次计算后自由水蓄水量
	* @return
	*/
	public static BigDecimal getSup() {
		return new BigDecimal("0.1");
	}
	
	///////////////////这个是哪里来的
	/**
	* R 时刻产流量
	* @return
	*/
	public static BigDecimal getR() {
		return new BigDecimal("0.1");
	}

	/**
	 * FR
	 * @return
	 */
	public static BigDecimal getFR(BigDecimal B) {
		// Wi=WU+WL+WD
		BigDecimal Wi = StepTwoUtil.WU.add(StepTwoUtil.WL).add(StepTwoUtil.WD);
		// Wm=WUM+WLM+WDM
		BigDecimal Wm = NumberConfig.WUM.add(NumberConfig.WLM).add(NumberConfig.WDM);		
		// FR=1-(1-Wi/Wm)^[B/(1+B)]
		BigDecimal base = NumberConst.ONE.subtract(Wi.divide(Wm, NumberConst.DIGIT, NumberConst.MODE));
		BigDecimal power = B.divide(B.add(NumberConst.ONE), NumberConst.DIGIT, NumberConst.MODE);
		return NumberConst.ONE.subtract(NumberUtil.pow(base, power));
	}
	
	/**
	 * Rs 地表径流
	 * @return
	 */
	public static void getRs() {
		// Rs=0
		Rs = NumberConst.ZERO;
	}
	
	/**
	 * Rss 壤中流
	 * @return
	 */
	public static void getRss(BigDecimal B) {
		// Rss=Sup*KSS*FR
		Rss = getSup().multiply(KSS).multiply(getFR(B));
	}
	
	/**
	 * Rg 地下径流
	 * @return
	 */
	public static void getRg(BigDecimal B) {
		// Rg=Sup*KG*FR
		Rg = getSup().multiply(KG).multiply(getFR(B));
	}
	
	/**
	 * S 自由水蓄水量
	 * @return
	 */
	public static BigDecimal getS() {
		// S=(1-KSS-KG)*Sup
		return getSup().multiply(NumberConst.ONE.subtract(KSS).subtract(KG));
	}
	
	///////////////////////////////////////////////////////////////////////////
	
	/**
	 * SMMF 产流面积上的自由水蓄水量
	 * @return
	 */
	public static BigDecimal getSMMF() {
		// SMMF=SM*(1+EX)
		return SM.multiply(NumberConst.ONE.add(EX));
	}
	
	/**
	 * AU
	 * @return
	 */
	public static BigDecimal getAU() {
		// AU=SMMF(1-(1-Sup/SM)^[1/(1+EX)])
		BigDecimal base = NumberConst.ONE.subtract(getSup().divide(SM, NumberConst.DIGIT, NumberConst.MODE));
		BigDecimal power = NumberConst.ONE.divide(NumberConst.ONE.add(EX), NumberConst.DIGIT, NumberConst.MODE);
		return getSMMF().multiply(NumberConst.ONE.subtract(NumberUtil.pow(base, power)));
	}
	
	/**
	 * FR 产流面积比
	 * @return
	 */
	public static BigDecimal getFR() {
		// FR=R/PE
		return getR().divide(StepCommonUtil.getPE(), NumberConst.DIGIT, NumberConst.MODE);
	}
	
	/**
	 * Rs 地表径流
	 * @return
	 */
	public static void getRs2() {
		// Rs=(PE-SM+Sup+SM*(1-(PE+AU)/SMMF)^(1+EX))*FR
		BigDecimal base = NumberConst.ONE.subtract(StepCommonUtil.getPE().add(getAU()).divide(getSMMF(), NumberConst.DIGIT, NumberConst.MODE));
		BigDecimal power = NumberConst.ONE.add(EX);
		Rs = getFR().multiply(StepCommonUtil.getPE().subtract(SM).add(getSup().add(SM.multiply(NumberUtil.pow(base, power)))));
	}
	
	/**
	 * Rss 壤中流
	 * @return
	 */
	public static void getRss() {
		// Rss={SM-SM*[1-(PE+AU)/SMMF]^(1+EX)}*KSS*FR
		BigDecimal base = NumberConst.ONE.subtract(StepCommonUtil.getPE().add(getAU()).divide(getSMMF(), NumberConst.DIGIT, NumberConst.MODE));
		BigDecimal power = NumberConst.ONE.add(EX);
		Rss = SM.subtract(SM.multiply(NumberUtil.pow(base, power))).multiply(KSS).multiply(getFR());
	}
	
	/**
	 * Rg 地下径流
	 * @return
	 */
	public static void getRg() {
		// RG={SM-SM*[1-(PE+AU)/SMMF]^(1+EX)}*KG*FR
		BigDecimal base = NumberConst.ONE.subtract(StepCommonUtil.getPE().add(getAU()).divide(getSMMF(), NumberConst.DIGIT, NumberConst.MODE));
		BigDecimal power = NumberConst.ONE.add(EX);
		Rg = SM.subtract(SM.multiply(NumberUtil.pow(base, power))).multiply(KG).multiply(getFR());
	}
	
	/**
	 * S 自由水蓄水量
	 * @return
	 */
	public static BigDecimal getS2() {
		// S=(1-KSS-KG){SM-SM[1-(PE+AU)/SMMF]^(1+EX)}
		BigDecimal base = NumberConst.ONE.subtract(StepCommonUtil.getPE().add(getAU()).divide(getSMMF(), NumberConst.DIGIT, NumberConst.MODE));
		BigDecimal power = NumberConst.ONE.add(EX);
		return NumberConst.ONE.subtract(KSS).subtract(KG).multiply(SM.subtract(SM.multiply(NumberUtil.pow(base, power))));
	}
	
	/**
	 * Rs 地表径流
	 * @return
	 */
	public static void getRs3() {
		// Rs=(PE-SM+Sup)*FR
		Rs = getFR().multiply(StepCommonUtil.getPE().subtract(SM).add(getSup()));
	}
	
	/**
	 * Rss 壤中流
	 * @return
	 */
	public static void getRss3() {
		// Rss=SM*KSS*FR
		Rss = SM.multiply(KSS).multiply(getFR());
	}
	
	/**
	 * Rg 地下径流
	 * @return
	 */
	public static void getRg3() {
		// Rg=SM*KG*FR
		Rg = SM.multiply(KG).multiply(getFR());
	}
	
	/**
	 * S 自由水蓄水量
	 * @return
	 */
	public static BigDecimal getS3() {
		// S=(1-KSS-KG)*SM
		return SM.multiply(NumberConst.ONE.subtract(KSS).subtract(KG));
	}
	
}
