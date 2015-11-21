package dwz.dal;

import java.io.Serializable;

import org.springframework.util.Assert;

/**
 * <strong>DalUtils</strong><br>
 * <br> 
 * <strong>Create on : 2011-12-14<br></strong>
 * <p>
 * <strong>Copyright (C) Ecointel Software Co.,Ltd.<br></strong>
 * <p>
 * @author peng.shi peng.shi@ecointel.com.cn<br>
 * @version <strong>Ecointel v1.0.0</strong><br>
 */
public class DalUtils
{
	
	/**
	 * 判断是否DO对象是否存在
	 * @param mapper
	 * @param key
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static boolean isExist(BaseMapper mapper,Serializable key) 
	{
		Assert.notNull(mapper);
		Assert.notNull(key);
		Object o = mapper.load(key);
		if (o == null)
		{
			return false;
		}
		return true;
	}
	
}
