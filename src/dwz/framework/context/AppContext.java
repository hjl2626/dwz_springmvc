package dwz.framework.context;

import dwz.business.website.Website;
import dwz.framework.user.User;

public interface AppContext {

	User getUser();

	void setUser(User user);

	Website getWebsite();

	void setWebsite(Website website);

}
