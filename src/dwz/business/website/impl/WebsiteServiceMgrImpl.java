package dwz.business.website.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dwz.business.enums.PageTarget;
import dwz.business.website.Page;
import dwz.business.website.Template;
import dwz.business.website.Website;
import dwz.business.website.WebsiteServiceMgr;
import dwz.framework.sys.business.AbstractBusinessObjectServiceMgr;
import dwz.framework.sys.exception.ServiceException;
import dwz.persistence.beans.WebPage;
import dwz.persistence.beans.WebWebsite;
import dwz.persistence.mapper.WebPageMapper;
import dwz.persistence.mapper.WebWebsiteMapper;

@Transactional(rollbackFor = Exception.class)
@Service(WebsiteServiceMgr.SERVICE_NAME)
public class WebsiteServiceMgrImpl extends AbstractBusinessObjectServiceMgr implements
	WebsiteServiceMgr {
	
	@Autowired
	private WebWebsiteMapper	websiteDao;
	@Autowired
	private WebPageMapper	webPageDao;


	public String createPage(Page page) throws ServiceException {
		String ret = null;

		if (page == null || page.getTitle() == null) {
			log.debug("page is null.");
			throw new ServiceException("page is null.");
		}
		
		page.setTarget(page.getPageTarget());
		webPageDao.insert(page.getPersistentObject());

		return ret;
	}

	public void deletePage(int id) {
		webPageDao.delete(id);
	}

	public Page getPage(int id) {

		WebPage po = webPageDao.load(id);
		if (po != null) {
			return new Page(po);
		}

		return null;
	}

	public List<Page> getPages() {
		ArrayList<Page> bos = new ArrayList<Page>();
		List<WebPage> pos = webPageDao.findAll();

		if (pos != null && pos.size() > 0) {
			for (WebPage po : pos) {
				bos.add(new Page(po));
			}
		}

		return bos;
	}

	public List<Page> getPages(PageTarget target) {
		ArrayList<Page> bos = new ArrayList<Page>();
		List<WebPage> pos = webPageDao.findByTarget(target.toString());

		if (pos != null && pos.size() > 0) {
			for (WebPage po : pos) {
				bos.add(new Page(po));
			}
		}

		return bos;
	}
	
	public void updatePage(Page page) {
		page.setTarget(page.getPageTarget());
		webPageDao.updateSelective(page.getPersistentObject());
	}

	public Website getWebsite() {
		List<WebWebsite> pos = websiteDao.findAll();
		if (pos != null && pos.size() > 0) {
			return new Website(pos.iterator().next());
		}

		return new Website();
	}

	public void saveWebsite(Website bo) throws ServiceException {
		if (bo == null) {
			log.debug("Website is null.");
			throw new ServiceException("Website is null.");
		}

		if (websiteDao.countAll() < 1) {
			websiteDao.insert(bo.getPersistentObject());
		} else {
			websiteDao.updateSelective(bo.getPersistentObject());
		}
	}

	public Collection<Template> getTemplates() {
		return this.getAppConfig().getWebTemplateMap().values();
	}

	public Template getDefaultTemplate() {
		return this.getTemplateByName("template1");
	}

	public Template getTemplateByName(String templateName) {
		return this.getAppConfig().getWebTemplateMap().get(templateName);
	}

}
