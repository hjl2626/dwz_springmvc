package dwz.persistence.beans;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import dwz.dal.object.AbstractDO;

public class SysPermission extends AbstractDO{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6865798270179847491L;
	private Integer roleId;
	private Integer resourceId;

	public SysPermission(){
	}

	public SysPermission(Integer roleId,Integer resourceId){
		this.roleId = roleId;
		this.resourceId = resourceId;
	}

	public void setRoleId(Integer value) {
		this.roleId = value;
	}
	
	public Integer getRoleId() {
		return this.roleId;
	}
	public void setResourceId(Integer value) {
		this.resourceId = value;
	}
	
	public Integer getResourceId() {
		return this.resourceId;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("RoleId",getRoleId())
			.append("ResourceId",getResourceId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getRoleId())
			.append(getResourceId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof SysPermission == false) return false;
		if(this == obj) return true;
		SysPermission other = (SysPermission)obj;
		return new EqualsBuilder()
			.append(getRoleId(),other.getRoleId())
			.append(getResourceId(),other.getResourceId())
			.isEquals();
	}

	public Integer getId() {
		return null;
	}


}

