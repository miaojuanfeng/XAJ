package gov.gz.hydrology.utils;

import java.math.BigDecimal;

import gov.gz.hydrology.constant.CommonConst;

public class StepOneUtil {

	/**
	 * WU0 上层土壤蓄水容量初始含水量
	 * @return
	 */
	public static BigDecimal getWU0() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * WL0 下层土壤蓄水容量初始含水量
	 * @return
	 */
	public static BigDecimal getWL0() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * WD0 深层土壤蓄水容量初始含水量
	 * @return
	 */
	public static BigDecimal getWD0() {
		return new BigDecimal("0.1");
	}
	
	/**
	 * WUM 上层土壤蓄水容量
	 * @return
	 */
	public static BigDecimal getWUM() {
		return new BigDecimal("0.2");
	}
	
	/**
	 * WLM 下层土壤蓄水容量
	 * @return
	 */
	public static BigDecimal getWLM() {
		return new BigDecimal("0.2");
	}
	
	/**
	 * WDM 深层土壤蓄水容量
	 * @return
	 */
	public static BigDecimal getWDM() {
		return new BigDecimal("0.2");
	}
	
	/**
	 * W0  流域初始平均蓄水量
	 * @return
	 */
	public static BigDecimal getW0() {
		// W0 = WU0 + WL0 + WD0
		return getWU0().add(getWL0().add(getWD0()));
	}
	
	/**
	 * Wm 流域平均蓄水容量
	 * @return
	 */
	public static BigDecimal getWm() {
		// Wm = WUM + WLM + WDM
		return getWUM().add(getWLM().add(getWDM()));
	}
	
	/**
	 * Wmm 流域内点最大的点蓄水容量
	 * @param B 流域张力水蓄水容量面积分布曲线指数
	 * @return
	 */
	public static BigDecimal getWmm(BigDecimal B) {
		// Wmm = Wm*(1+B)
		return getWm().multiply(B.add(new BigDecimal("1")));
	}
	
	/**
	 * A
	 */
	public static BigDecimal getA(BigDecimal B) {
		// A = Wmm*[1-(1-W0/Wm)^(1/B+1)]
		BigDecimal one = new BigDecimal(1);
		BigDecimal power = one.divide(B, CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE).add(one);
		BigDecimal base = one.subtract(getW0().divide(getWm(), CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE));
		return getWmm(B).multiply(one.subtract(new BigDecimal(Math.pow(base.doubleValue(), power.doubleValue()))));
	}
	
	/**
	 * R 产流量（径流深）
	 */
	public static BigDecimal getR(BigDecimal B) {
		BigDecimal R = CommonConst.BIGDECIMAL_ZERO;
		BigDecimal PE = StepCommonUtil.getPE();
		// PE > 0
		if( PE.compareTo(CommonConst.BIGDECIMAL_ZERO) == 1 ) {
			BigDecimal temp_PE_A = PE.add(getA(B));
			BigDecimal temp_Wmm = getWmm(B);
			// PE+A<Wmm
			if( temp_PE_A.compareTo(temp_Wmm) == -1 ) {
				BigDecimal base = CommonConst.BIGDECIMAL_ONE.subtract(temp_PE_A.divide(temp_Wmm, CommonConst.DECIMAL_DIGIT, CommonConst.DECIMAL_MODE));
				BigDecimal power = CommonConst.BIGDECIMAL_ONE.add(B);
				R = PE.add(getW0()).subtract(getWm()).add(getWm().multiply(new BigDecimal(Math.pow(base.doubleValue(), power.doubleValue()))));
			// PE+A>=Wmm
			}else {
				// R=PE-(Wm-W0)
				R = PE.subtract(getWm().subtract(getW0()));
			}
		}
		// PE < 0 ? R = 0
		return R;
	}
}
