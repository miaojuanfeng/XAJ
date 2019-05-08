package gov.gz.hydrology.constant;

import java.math.BigDecimal;

public class CommonConst {
	
	/*
	 * 0值
	 */
	public static final BigDecimal BIGDECIMAL_ZERO = new BigDecimal(0);
	
	/*
	 * 1值
	 */
	public static final BigDecimal BIGDECIMAL_ONE = new BigDecimal(1);

	/*
	 * 小数保留位数
	 */
	public static final int DECIMAL_DIGIT = 2;
	
	/*
	 * 小数舍弃模式
	 */
	public static final int DECIMAL_MODE = BigDecimal.ROUND_HALF_UP;
}
