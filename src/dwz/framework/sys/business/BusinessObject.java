package dwz.framework.sys.business;

import java.io.Serializable;

/**
 * <strong>BusinessObject</strong><br>
 * <br> 
 * <strong>Create on : 2011-12-31<br></strong>
 * <p>
 * <strong>Copyright (C) Ecointel Software Co.,Ltd.<br></strong>
 * <p>
 * @author peng.shi peng.shi@ecointel.com.cn<br>
 * @version <strong>Ecointel v1.0.0</strong><br>
 */
public interface BusinessObject extends Serializable {

	Serializable getId();
	
	boolean isNew();
	
	String getCacheKey();
	
}
