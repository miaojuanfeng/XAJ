package gov.gz.hydrology.utils;

import java.math.BigDecimal;

import gov.gz.hydrology.constant.CommonConst;

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
	
	/**
	 * KSS 壤中流出流系数
	 */
	public static BigDecimal KSS = new BigDecimal("0.1");
	/**
	 * KG 地下径流出流系数
	 */
	public static BigDecimal KG = new BigDecimal("0.1");
	/**
	 * EX 自由水蓄水容量曲线指数
	 */
	public static BigDecimal EX = new BigDecimal("0.1");
	/**
	 * SM 自由水平均蓄水容量
	 */
	public static BigDecimal SM = new BigDecimal("0.1");

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
		BigDecimal Wm = StepOneUtil.getWUM().add(StepOneUtil.getWLM()).add(StepOneUtil.getWDM());		
		// FR=1-(1-Wi/Wm)^[B/(1+B)]
		BigDecimal base = CommonConst.BIGDECIMAL_ONE.subtract(Wi.divide(Wm, CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE));
		BigDecimal power = B.divide(B.add(CommonConst.BIGDECIMAL_ONE), CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE);
		return CommonConst.BIGDECIMAL_ONE.subtract(new BigDecimal(Math.pow(base.doubleValue(), power.doubleValue())));
	}
	
	/**
	 * Rs 地表径流
	 * @return
	 */
	public static void getRs() {
		// Rs=0
		Rs = CommonConst.BIGDECIMAL_ZERO;
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
		return getSup().multiply(CommonConst.BIGDECIMAL_ONE.subtract(KSS).subtract(KG));
	}
	
	///////////////////////////////////////////////////////////////////////////
	
	/**
	 * SMMF 产流面积上的自由水蓄水量
	 * @return
	 */
	public static BigDecimal getSMMF() {
		// SMMF=SM*(1+EX)
		return SM.multiply(CommonConst.BIGDECIMAL_ONE.add(EX));
	}
	
	/**
	 * AU
	 * @return
	 */
	public static BigDecimal getAU() {
		// AU=SMMF(1-(1-Sup/SM)^[1/(1+EX)])
		BigDecimal base = CommonConst.BIGDECIMAL_ONE.subtract(getSup().divide(SM, CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE));
		BigDecimal power = CommonConst.BIGDECIMAL_ONE.divide(CommonConst.BIGDECIMAL_ONE.add(EX), CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE);
		return getSMMF().multiply(CommonConst.BIGDECIMAL_ONE.subtract(new BigDecimal(Math.pow(base.doubleValue(), power.doubleValue()))));
	}
	
	/**
	 * FR 产流面积比
	 * @return
	 */
	public static BigDecimal getFR() {
		// FR=R/PE
		return getR().divide(StepCommonUtil.getPE(), CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE);
	}
	
	/**
	 * Rs 地表径流
	 * @return
	 */
	public static void getRs2() {
		// Rs=(PE-SM+Sup+SM*(1-(PE+AU)/SMMF)^(1+EX))*FR
		BigDecimal base = CommonConst.BIGDECIMAL_ONE.subtract(StepCommonUtil.getPE().add(getAU()).divide(getSMMF(), CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE));
		BigDecimal power = CommonConst.BIGDECIMAL_ONE.add(EX);
		Rs = getFR().multiply(StepCommonUtil.getPE().subtract(SM).add(getSup().add(SM.multiply(new BigDecimal(Math.pow(base.doubleValue(), power.doubleValue()))))));
	}
	
	/**
	 * Rss 壤中流
	 * @return
	 */
	public static void getRss() {
		// Rss={SM-SM*[1-(PE+AU)/SMMF]^(1+EX)}*KSS*FR
		BigDecimal base = CommonConst.BIGDECIMAL_ONE.subtract(StepCommonUtil.getPE().add(getAU()).divide(getSMMF(), CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE));
		BigDecimal power = CommonConst.BIGDECIMAL_ONE.add(EX);
		Rss = SM.subtract(SM.multiply(new BigDecimal(Math.pow(base.doubleValue(), power.doubleValue())))).multiply(KSS).multiply(getFR());
	}
	
	/**
	 * Rg 地下径流
	 * @return
	 */
	public static void getRg() {
		// RG={SM-SM*[1-(PE+AU)/SMMF]^(1+EX)}*KG*FR
		BigDecimal base = CommonConst.BIGDECIMAL_ONE.subtract(StepCommonUtil.getPE().add(getAU()).divide(getSMMF(), CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE));
		BigDecimal power = CommonConst.BIGDECIMAL_ONE.add(EX);
		Rg = SM.subtract(SM.multiply(new BigDecimal(Math.pow(base.doubleValue(), power.doubleValue())))).multiply(KG).multiply(getFR());
	}
	
	/**
	 * S 自由水蓄水量
	 * @return
	 */
	public static BigDecimal getS2() {
		// S=(1-KSS-KG){SM-SM[1-(PE+AU)/SMMF]^(1+EX)}
		BigDecimal base = CommonConst.BIGDECIMAL_ONE.subtract(StepCommonUtil.getPE().add(getAU()).divide(getSMMF(), CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE));
		BigDecimal power = CommonConst.BIGDECIMAL_ONE.add(EX);
		return CommonConst.BIGDECIMAL_ONE.subtract(KSS).subtract(KG).multiply(SM.subtract(SM.multiply(new BigDecimal(Math.pow(base.doubleValue(), power.doubleValue())))));
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
		return SM.multiply(CommonConst.BIGDECIMAL_ONE.subtract(KSS).subtract(KG));
	}
	
}
