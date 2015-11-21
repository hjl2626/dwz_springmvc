package dwz.framework.sys.business;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dwz.cache.CacheUtils;
import dwz.framework.config.AppConfiguration;


/**
 * <strong>AbsBusinessObject</strong><br>
 * <br> 
 * <strong>Create on : 2011-12-31<br></strong>
 * <p>
 * <strong>Copyright (C) Ecointel Software Co.,Ltd.<br></strong>
 * <p>
 * @author peng.shi peng.shi@ecointel.com.cn<br>
 * @version <strong>Ecointel v1.0.0</strong><br>
 */
public abstract class AbstractBusinessObject implements BusinessObject {

	private static final long serialVersionUID = 8489377152416733605L;

	private Logger logger = null;
	
	public AbstractBusinessObject() {
		this.logger = LoggerFactory.getLogger(this.getClass());
		this.logger.debug("BusinessObject Initial.");
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

	/**
	 * 判断当前是否为新业务对象，没有被持久化
	 */
	public boolean isNew() {
		if (this.getId() == null) {
			return true;
		}
		return false;
	}

	/* (non-Javadoc)
	 * @see cn.com.ecointel.roomyi.framework.sys.business.BusinessObject#getCacheKey()
	 */
	@Override
	public String getCacheKey()
	{
		return CacheUtils.keyOfObject(this.getClass(), this.getId());
	}
	
	/* 
	 * 重载equals，用来判断业务对象是否相同
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj)
	{
		if (obj == null)
		{
			return false;
		}
		
		boolean typeable = obj instanceof BusinessObject;
		if (! typeable )
		{
			return false;
		}
		BusinessObject bo = (BusinessObject)obj;
		if (this.isNew() || bo.isNew())
		{
			return false;
		}
		
		if (this.getId().equals(bo.getId()))
		{
			return true;
		}
		return false;
	}
	
	protected AppConfiguration getAppConfig() {
		return AppConfiguration.getInstance();
	}
}
