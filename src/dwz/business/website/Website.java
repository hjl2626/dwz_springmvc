package dwz.business.website;

import dwz.framework.sys.business.AbstractBusinessObject;
import dwz.persistence.beans.WebWebsite;

public class Website extends AbstractBusinessObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6659352165997238894L;
	private WebWebsite webWebsite;

	public Website() {
		webWebsite = new WebWebsite();
	}

	public Website(WebWebsite webWebsite) {
		this.webWebsite = webWebsite;
	}

	public String getAreaBanner() {
		return webWebsite.getAreaBanner();
	}

	public String getAreaFooter() {
		return webWebsite.getAreaFooter();
	}

	public String getAreaHeader() {
		return webWebsite.getAreaHeader();
	}

	public String getAreaSidebar() {
		return webWebsite.getAreaSidebar();
	}

	public String getIcp() {
		return webWebsite.getIcp();
	}

	public Integer getId() {
		return webWebsite.getId();
	}

	public String getLayout() {
		return webWebsite.getLayout();
	}

	public String getLogo() {
		return webWebsite.getLogo();
	}

	public String getMetaDescription() {
		return webWebsite.getMetaDescription();
	}

	public String getMetaKeywords() {
		return webWebsite.getMetaKeywords();
	}

	public WebWebsite getPersistentObject() {
		return webWebsite;
	}

	public String getTemplate() {
		return webWebsite.getTemplate();
	}

	public String getTheme() {
		return webWebsite.getTheme();
	}

	public String getTitle() {
		return webWebsite.getTitle();
	}

	public void setAreaBanner(String areaBanner) {
		webWebsite.setAreaBanner(areaBanner);
	}

	public void setAreaFooter(String areaFooter) {
		webWebsite.setAreaFooter(areaFooter);
	}

	public void setAreaHeader(String areaHeader) {
		webWebsite.setAreaHeader(areaHeader);
	}

	public void setAreaSidebar(String areaSidebar) {
		webWebsite.setAreaSidebar(areaSidebar);
	}

	public void setIcp(String icp) {
		webWebsite.setIcp(icp);
	}

	public void setId(Integer id){
		webWebsite.setId(id);
	}

	public void setLayout(String layout) {
		webWebsite.setLayout(layout);
	}

	public void setLogo(String logo) {
		webWebsite.setLogo(logo);
	}

	public void setMetaDescription(String metaDescription) {
		webWebsite.setMetaDescription(metaDescription);
	}
	
	public void setMetaKeywords(String metaKeywords) {
		webWebsite.setMetaKeywords(metaKeywords);
	}

	public void setTemplate(String template) {
		webWebsite.setTemplate(template);
	}

	public void setTheme(String theme) {
		webWebsite.setTheme(theme);
	}
	
	public void setTitle(String title) {
		webWebsite.setTitle(title);
	}

}
