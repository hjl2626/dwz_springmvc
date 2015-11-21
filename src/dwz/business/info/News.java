package dwz.business.info;

import java.util.Date;

import dwz.common.util.EnumUtils;
import dwz.framework.sys.business.AbstractBusinessObject;
import dwz.framework.sys.business.BusinessFactory;
import dwz.persistence.beans.InfNews;

public class News extends AbstractBusinessObject {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7228528303697108518L;
	private InfNews infNews;

	public News(InfNews infNews) {
		this.infNews = infNews;
	}

	public News() {
		Date now = new Date();
		this.infNews = new InfNews();
		this.infNews.setType(NewsType.NEWS.toString());
		this.infNews.setStatus( NewsStatus.PENDING.toString());
		this.infNews.setInsertDate(now);
		this.infNews.setUpdateDate(now);
	}

	public InfNews getInfNews() {
		return this.infNews;
	}

	public Integer getId() {
		return infNews.getId();
	}
	public void setId(Integer id){
		infNews.setId(id);
	}

	public String getAuthor() {
		return infNews.getAuthor();
	}

	public String getContent() {
		return infNews.getContent();
	}

	public String getHref() {
		return "/index!news.do?newsId=" + this.getId();
	}

	public Date getInsertDate() {
		return infNews.getInsertDate();
	}

	public News getNext() {
		NewsServiceMgr manager = BusinessFactory.getInstance().getService(NewsServiceMgr.SERVICE_NAME);
		return manager.getNextNews(this);
	}

	public News getPrev() {
		NewsServiceMgr manager = BusinessFactory.getInstance().getService(NewsServiceMgr.SERVICE_NAME);
		return manager.getPrevNews(this);
	}

	public String getSource() {
		return infNews.getSource();
	}

	public NewsStatus getStatus() {
		if (EnumUtils.isDefined(NewsStatus.values(), infNews.getStatus()))
			return NewsStatus.valueOf(infNews.getStatus());
		return NewsStatus.PENDING;
	}

	public void setStatus(NewsStatus status) {
		this.infNews.setStatus(status.toString());
	}

	public String getTitle() {
		return infNews.getTitle();
	}

	public NewsType getType() {
		if (EnumUtils.isDefined(NewsType.values(), infNews.getType()))
			return NewsType.valueOf(infNews.getType());
		return null;
	}

	public Date getUpdateDate() {
		return infNews.getUpdateDate();
	}

	public void setAuthor(String author) {
		infNews.setAuthor(author);
	}

	public void setContent(String content) {
		infNews.setContent(content);
	}

	public void setSource(String source) {
		infNews.setSource(source);
	}

	public void setTitle(String title) {
		infNews.setTitle(title);
	}

	public void setType(NewsType type) {
		// if (EnumUtils.isDefined(NewsType.values(), type))
		infNews.setType(type.toString());
	}

}
