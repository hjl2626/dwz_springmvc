package dwz.persistence.beans;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import dwz.dal.object.AbstractDO;

public class WebWebsite extends AbstractDO{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7669842131104331855L;
	private Integer id;
	private String title;
	private String metaKeywords;
	private String metaDescription;
	private String template;
	private String layout;
	private String theme;
	private String logo;
	private String areaHeader;
	private String areaSidebar;
	private String areaBanner;
	private String areaFooter;
	private String icp;

	public WebWebsite(){
	}

	public WebWebsite(Integer id){
		this.id = id;
	}

	public void setId(Integer value) {
		this.id = value;
	}
	
	public Integer getId() {
		return this.id;
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
	public void setTemplate(String value) {
		this.template = value;
	}
	
	public String getTemplate() {
		return this.template;
	}
	public void setLayout(String value) {
		this.layout = value;
	}
	
	public String getLayout() {
		return this.layout;
	}
	public void setTheme(String value) {
		this.theme = value;
	}
	
	public String getTheme() {
		return this.theme;
	}
	public void setLogo(String value) {
		this.logo = value;
	}
	
	public String getLogo() {
		return this.logo;
	}
	public void setAreaHeader(String value) {
		this.areaHeader = value;
	}
	
	public String getAreaHeader() {
		return this.areaHeader;
	}
	public void setAreaSidebar(String value) {
		this.areaSidebar = value;
	}
	
	public String getAreaSidebar() {
		return this.areaSidebar;
	}
	public void setAreaBanner(String value) {
		this.areaBanner = value;
	}
	
	public String getAreaBanner() {
		return this.areaBanner;
	}
	public void setAreaFooter(String value) {
		this.areaFooter = value;
	}
	
	public String getAreaFooter() {
		return this.areaFooter;
	}
	public void setIcp(String value) {
		this.icp = value;
	}
	
	public String getIcp() {
		return this.icp;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Title",getTitle())
			.append("MetaKeywords",getMetaKeywords())
			.append("MetaDescription",getMetaDescription())
			.append("Template",getTemplate())
			.append("Layout",getLayout())
			.append("Theme",getTheme())
			.append("Logo",getLogo())
			.append("AreaHeader",getAreaHeader())
			.append("AreaSidebar",getAreaSidebar())
			.append("AreaBanner",getAreaBanner())
			.append("AreaFooter",getAreaFooter())
			.append("Icp",getIcp())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof WebWebsite == false) return false;
		if(this == obj) return true;
		WebWebsite other = (WebWebsite)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

