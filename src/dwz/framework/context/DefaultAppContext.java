package dwz.framework.context;

import dwz.business.website.Website;
import dwz.framework.user.User;

public class DefaultAppContext implements AppContext {

	private User user = null;

	private Website website = null;

	public DefaultAppContext() {
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Website getWebsite() {
		return website;
	}

	public void setWebsite(Website website) {
		this.website = website;
	}

}
