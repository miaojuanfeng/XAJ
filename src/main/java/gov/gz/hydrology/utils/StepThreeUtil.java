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
		Rss = getSup().multiply(NumberConfig.KSS).multiply(getFR(B));
	}
	
	/**
	 * Rg 地下径流
	 * @return
	 */
	public static void getRg(BigDecimal B) {
		// Rg=Sup*KG*FR
		Rg = getSup().multiply(NumberConfig.KG).multiply(getFR(B));
	}
	
	/**
	 * S 自由水蓄水量
	 * @return
	 */
	public static BigDecimal getS() {
		// S=(1-KSS-KG)*Sup
		return getSup().multiply(NumberConst.ONE.subtract(NumberConfig.KSS).subtract(NumberConfig.KG));
	}
	
	///////////////////////////////////////////////////////////////////////////
	
	/**
	 * SMMF 产流面积上的自由水蓄水量
	 * @return
	 */
	public static BigDecimal getSMMF() {
		// SMMF=SM*(1+EX)
		return NumberConfig.SM.multiply(NumberConst.ONE.add(NumberConfig.EX));
	}
	
	/**
	 * AU
	 * @return
	 */
	public static BigDecimal getAU() {
		// AU=SMMF(1-(1-Sup/SM)^[1/(1+EX)])
		BigDecimal base = NumberConst.ONE.subtract(getSup().divide(NumberConfig.SM, NumberConst.DIGIT, NumberConst.MODE));
		BigDecimal power = NumberConst.ONE.divide(NumberConst.ONE.add(NumberConfig.EX), NumberConst.DIGIT, NumberConst.MODE);
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
		BigDecimal power = NumberConst.ONE.add(NumberConfig.EX);
		Rs = getFR().multiply(StepCommonUtil.getPE().subtract(NumberConfig.SM).add(getSup().add(NumberConfig.SM.multiply(NumberUtil.pow(base, power)))));
	}
	
	/**
	 * Rss 壤中流
	 * @return
	 */
	public static void getRss() {
		// Rss={SM-SM*[1-(PE+AU)/SMMF]^(1+EX)}*KSS*FR
		BigDecimal base = NumberConst.ONE.subtract(StepCommonUtil.getPE().add(getAU()).divide(getSMMF(), NumberConst.DIGIT, NumberConst.MODE));
		BigDecimal power = NumberConst.ONE.add(NumberConfig.EX);
		Rss = NumberConfig.SM.subtract(NumberConfig.SM.multiply(NumberUtil.pow(base, power))).multiply(NumberConfig.KSS).multiply(getFR());
	}
	
	/**
	 * Rg 地下径流
	 * @return
	 */
	public static void getRg() {
		// RG={SM-SM*[1-(PE+AU)/SMMF]^(1+EX)}*KG*FR
		BigDecimal base = NumberConst.ONE.subtract(StepCommonUtil.getPE().add(getAU()).divide(getSMMF(), NumberConst.DIGIT, NumberConst.MODE));
		BigDecimal power = NumberConst.ONE.add(NumberConfig.EX);
		Rg = NumberConfig.SM.subtract(NumberConfig.SM.multiply(NumberUtil.pow(base, power))).multiply(NumberConfig.KG).multiply(getFR());
	}
	
	/**
	 * S 自由水蓄水量
	 * @return
	 */
	public static BigDecimal getS2() {
		// S=(1-KSS-KG){SM-SM[1-(PE+AU)/SMMF]^(1+EX)}
		BigDecimal base = NumberConst.ONE.subtract(StepCommonUtil.getPE().add(getAU()).divide(getSMMF(), NumberConst.DIGIT, NumberConst.MODE));
		BigDecimal power = NumberConst.ONE.add(NumberConfig.EX);
		return NumberConst.ONE.subtract(NumberConfig.KSS).subtract(NumberConfig.KG).multiply(NumberConfig.SM.subtract(NumberConfig.SM.multiply(NumberUtil.pow(base, power))));
	}
	
	/**
	 * Rs 地表径流
	 * @return
	 */
	public static void getRs3() {
		// Rs=(PE-SM+Sup)*FR
		Rs = getFR().multiply(StepCommonUtil.getPE().subtract(NumberConfig.SM).add(getSup()));
	}
	
	/**
	 * Rss 壤中流
	 * @return
	 */
	public static void getRss3() {
		// Rss=SM*KSS*FR
		Rss = NumberConfig.SM.multiply(NumberConfig.KSS).multiply(getFR());
	}
	
	/**
	 * Rg 地下径流
	 * @return
	 */
	public static void getRg3() {
		// Rg=SM*KG*FR
		Rg = NumberConfig.SM.multiply(NumberConfig.KG).multiply(getFR());
	}
	
	/**
	 * S 自由水蓄水量
	 * @return
	 */
	public static BigDecimal getS3() {
		// S=(1-KSS-KG)*SM
		return NumberConfig.SM.multiply(NumberConst.ONE.subtract(NumberConfig.KSS).subtract(NumberConfig.KG));
	}
	
}
