/*
 * Powered By [dwz4j-framework]
 * Web Site: http://j-ui.com
 * Google Code: http://code.google.com/p/dwz4j/
 * Generated 2012-09-10 08:51:33 by code generator
 */
package dwz.framework.user;

import java.util.Date;

import dwz.framework.sys.business.AbstractBusinessObject;
import dwz.persistence.beans.SysResource;

public class Resource extends AbstractBusinessObject{
	private static final long serialVersionUID = 1L;
	private SysResource sysResource;
	
	/* generateConstructor */
	public Resource() {
		this.sysResource = new SysResource();
	}
	public Resource(SysResource sysResource) {
		this.sysResource = sysResource;
	}
	public SysResource getSysResource(){
		return this.sysResource;
	}

	
	public Integer getId() {
		return this.sysResource.getId();
	}

	public void setId(Integer id) {
		this.sysResource.setId(id);
	}
	
	public String getSn() {
		return this.sysResource.getSn();
	}

	public void setSn(String sn) {
		this.sysResource.setSn(sn);
	}
	
	public String getTitle() {
		return this.sysResource.getTitle();
	}

	public void setTitle(String title) {
		this.sysResource.setTitle(title);
	}
	
	public String getRemark() {
		return this.sysResource.getRemark();
	}

	public void setRemark(String remark) {
		this.sysResource.setRemark(remark);
	}
	
	public int getPid() {
		Integer value = this.sysResource.getPid();
		return value != null ? value : 0;
	}

	public void setPid(int pid) {
		this.sysResource.setPid(pid);
	}
	
	public int getLevel() {
		Integer value = this.sysResource.getLevel();
		return value != null ? value : 0;
	}

	public void setLevel(int level) {
		this.sysResource.setLevel(level);
	}
	
	public Date getInsertDate() {
		return this.sysResource.getInsertDate();
	}

	public void setInsertDate(Date insertDate) {
		this.sysResource.setInsertDate(insertDate);
	}
	
	public Date getUpdateDate() {
		return this.sysResource.getUpdateDate();
	}

	public void setUpdateDate(Date updateDate) {
		this.sysResource.setUpdateDate(updateDate);
	}

}

