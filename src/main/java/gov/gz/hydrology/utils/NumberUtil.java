package gov.gz.hydrology.utils;

import java.math.BigDecimal;

public class NumberUtil {

	/**
	 * 指数计算
	 * @param base 底数
	 * @param power 指数
	 * @return
	 */
	public static BigDecimal pow(BigDecimal base, BigDecimal power) {
		return new BigDecimal(Math.pow(base.doubleValue(), power.doubleValue()));
	}
}
