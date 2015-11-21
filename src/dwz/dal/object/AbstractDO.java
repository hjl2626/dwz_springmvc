package dwz.dal.object;

import java.io.Serializable;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * <strong>Title : AbstractDO<br></strong>
 * <strong>Description : </strong>
 * 基础Data Object 类<br> 
 * <strong>Create on : 2011-11-2<br></strong>
 * <p>
 * <strong>Copyright (C) Ecointel Software Co.,Ltd.<br></strong>
 * <p>
 * @author peng.shi peng.shi@ecointellects.com<br>
 * @version <strong>Ecointel v1.0.0</strong><br>
 * <br>
 * <strong>修改历史:</strong><br>
 * 修改人		修改日期		修改描述<br>
 * -------------------------------------------<br>
 * <br>
 * <br>
 */
public abstract class AbstractDO implements Serializable {
	
	private static final long serialVersionUID = -3942149913171834745L;

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
	public abstract Serializable getId();
}
