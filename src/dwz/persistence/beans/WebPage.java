package dwz.persistence.beans;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import dwz.dal.object.AbstractDO;

public class WebPage extends AbstractDO{
	/**
	 * 
	 */
	private static final long serialVersionUID = -1242194398918527165L;
	private Integer id;
	private String name;
	private Integer sequence;
	private String title;
	private String metaKeywords;
	private String metaDescription;
	private String content;
	private String target;
	private java.util.Date insertDate;
	private java.util.Date updateDate;

	public WebPage(){
	}

	public WebPage(Integer id){
		this.id = id;
	}

	public void setId(Integer value) {
		this.id = value;
	}
	
	public Integer getId() {
		return this.id;
	}
	public void setName(String value) {
		this.name = value;
	}
	
	public String getName() {
		return this.name;
	}
	public void setSequence(Integer value) {
		this.sequence = value;
	}
	
	public Integer getSequence() {
		return this.sequence;
	}
	public void setTitle(String value) {
		this.title = value;
	}
	
	public String getTitle() {
		return this.title;
	}
	public void setMetaKeywords(String value) {
		this.metaKeywords = value;
	}
	
	public String getMetaKeywords() {
		return this.metaKeywords;
	}
	public void setMetaDescription(String value) {
		this.metaDescription = value;
	}
	
	public String getMetaDescription() {
		return this.metaDescription;
	}
	public void setContent(String value) {
		this.content = value;
	}
	
	public String getContent() {
		return this.content;
	}
	public void setTarget(String value) {
		this.target = value;
	}
	
	public String getTarget() {
		return this.target;
	}

	public void setInsertDate(java.util.Date value) {
		this.insertDate = value;
	}
	
	public java.util.Date getInsertDate() {
		return this.insertDate;
	}

	public void setUpdateDate(java.util.Date value) {
		this.updateDate = value;
	}
	
	public java.util.Date getUpdateDate() {
		return this.updateDate;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Name",getName())
			.append("Sequence",getSequence())
			.append("Title",getTitle())
			.append("MetaKeywords",getMetaKeywords())
			.append("MetaDescription",getMetaDescription())
			.append("Content",getContent())
			.append("Target",getTarget())
			.append("InsertDate",getInsertDate())
			.append("UpdateDate",getUpdateDate())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof WebPage == false) return false;
		if(this == obj) return true;
		WebPage other = (WebPage)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

