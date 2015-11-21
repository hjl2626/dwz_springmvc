/*
 * Powered By [dwz4j-framework]
 * Web Site: http://j-ui.com
 * Google Code: http://code.google.com/p/dwz4j/
 * Generated 2012-09-10 08:51:33 by code generator
 */
package dwz.framework.user;

import java.util.Date;

import dwz.framework.sys.business.AbstractBusinessObject;
import dwz.persistence.beans.SysRole;

public class Role extends AbstractBusinessObject{
	private static final long serialVersionUID = 1L;
	private SysRole sysRole;
	
	/* generateConstructor */
	public Role() {
		this.sysRole = new SysRole();
	}
	public Role(SysRole sysRole) {
		this.sysRole = sysRole;
	}
	public SysRole getSysRole(){
		return this.sysRole;
	}

	
	public Integer getId() {
		return this.sysRole.getId();
	}

	public void setId(Integer id) {
		this.sysRole.setId(id);
	}
	
	public String getSn() {
		return this.sysRole.getSn();
	}

	public void setSn(String sn) {
		this.sysRole.setSn(sn);
	}
	
	public String getRemark() {
		return this.sysRole.getRemark();
	}

	public void setRemark(String remark) {
		this.sysRole.setRemark(remark);
	}
	
	public String getStatus() {
		return this.sysRole.getStatus();
	}

	public void setStatus(String status) {
		this.sysRole.setStatus(status);
	}
	
	public String getName() {
		return this.sysRole.getName();
	}

	public void setName(String name) {
		this.sysRole.setName(name);
	}
	
	public Date getInsertDate() {
		return this.sysRole.getInsertDate();
	}

	public void setInsertDate(Date insertDate) {
		this.sysRole.setInsertDate(insertDate);
	}
	
	public Date getUpdateDate() {
		return this.sysRole.getUpdateDate();
	}

	public void setUpdateDate(Date updateDate) {
		this.sysRole.setUpdateDate(updateDate);
	}

}

