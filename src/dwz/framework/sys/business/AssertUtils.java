package dwz.framework.sys.business;

/**
 * <strong>AssertUtils</strong><br>
 * <br> 
 * <strong>Create on : 2011-12-31<br></strong>
 * <p>
 * <strong>Copyright (C) Ecointel Software Co.,Ltd.<br></strong>
 * <p>
 * @author peng.shi peng.shi@ecointel.com.cn<br>
 * @version <strong>Ecointel v1.0.0</strong><br>
 */
public class AssertUtils {
	
	/**
	 * Assert为非新业务对象
	 * @param businessObject
	 */
	public static void notNewBusinessObject(BusinessObject businessObject){
		if (businessObject.isNew()){
			throw new java.lang.IllegalArgumentException();
		}
	}
	
	/**
	 * Assert为新业务对象
	 * @param businessObject
	 */
	public static void newBusinessObject(BusinessObject businessObject){
		if (!businessObject.isNew()){
			throw new java.lang.IllegalArgumentException();
		}
	}
	
}
