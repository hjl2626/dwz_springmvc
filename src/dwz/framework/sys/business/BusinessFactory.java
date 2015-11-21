package dwz.framework.sys.business;

import org.springframework.util.Assert;

import dwz.framework.spring.SpringContextHolder;


/**
 * <strong>BusinessFactory</strong><br>
 * <br> 
 * <strong>Create on : 2011-12-31<br></strong>
 * <p>
 * <strong>Copyright (C) Ecointel Software Co.,Ltd.<br></strong>
 * <p>
 * @author peng.shi peng.shi@ecointel.com.cn<br>
 * @version <strong>Ecointel v1.0.0</strong><br>
 */
public class BusinessFactory {
	
	private static BusinessFactory bf;
	
	private BusinessFactory() {
		 
	}
	
	public static BusinessFactory getInstance() {
		if (bf == null) {
			synchronized (BusinessFactory.class) {
				bf = new BusinessFactory();
			}
		}
		return bf;
	}
	
	@SuppressWarnings("unchecked")
	public <T extends BusinessObjectServiceMgr> T getService(String serviceName) {
		Assert.hasText(serviceName);
		return (T)SpringContextHolder.getBean(serviceName);
	}
	
}
