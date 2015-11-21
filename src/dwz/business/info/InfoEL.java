package dwz.business.info;

import java.util.ArrayList;
import java.util.List;

import dwz.business.enums.PageTarget;
import dwz.business.website.Page;
import dwz.business.website.Website;
import dwz.business.website.WebsiteServiceMgr;
import dwz.common.util.EnumUtils;
import dwz.framework.context.AppContext;
import dwz.framework.context.AppContextHolder;
import dwz.framework.context.DefaultAppContext;
import dwz.framework.sys.business.BusinessFactory;
import dwz.framework.user.User;

public class InfoEL {

	public static List<News> listNews(String type, Integer startIndex,
			Integer count) {

		if (EnumUtils.isDefined(NewsType.values(), type)) {
			NewsServiceMgr manager = BusinessFactory.getInstance().getService(
					NewsServiceMgr.SERVICE_NAME);
			return manager.listNewsOnWeb(NewsType.valueOf(type), startIndex,
					count);
		}
		return new ArrayList<News>();
	}

	public static List<Page> listPages(String target) {
		if (EnumUtils.isDefined(PageTarget.values(), target)) {
			WebsiteServiceMgr manager = BusinessFactory.getInstance()
					.getService(WebsiteServiceMgr.SERVICE_NAME);

			return manager.getPages(PageTarget.valueOf(target));
		}
		return new ArrayList<Page>();
	}

	public static User getContextUser() {
		AppContext appContext = AppContextHolder.getContext();

		if (appContext != null) {
			return appContext.getUser();
		}

		return null;
	}

	public static Website getContextWebsite() {

		AppContext context = AppContextHolder.getContext();

		if (context != null) {
			return context.getWebsite();
		}

		return null;
	}
}
