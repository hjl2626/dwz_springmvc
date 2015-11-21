package dwz.adapter.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import dwz.business.website.WebsiteServiceMgr;
import dwz.framework.context.AppContext;
import dwz.framework.context.AppContextHolder;
import dwz.framework.context.DefaultAppContext;
import dwz.framework.identity.Validator;
import dwz.framework.sys.business.BusinessFactory;

public class WebsiteContextFilter implements Filter {

	private String[] skipUris = null;

	private static final String PARAM_URI = "uri";

	public void destroy() {
		this.skipUris = null;
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;

		Validator validator = Validator.getInstance();
		validator.init(request.getSession());

		String queryString = request.getQueryString();
		String requestUri = request.getRequestURI();
		// if ("/".equals(requestUri)) requestUri = "/index!index.do";

		System.out.println("url: " + requestUri + (queryString != null ? "?" + queryString : ""));
		for (String skipUris : this.skipUris) {
			String unsecureQuery = null;
			String uri = skipUris;
			boolean skip = false;

			if (skipUris.indexOf("?") >= 0) {
				uri = skipUris.substring(0, skipUris.indexOf("?"));
				unsecureQuery = skipUris.substring(skipUris.indexOf("?") + 1);
				skip = requestUri.startsWith(uri) && queryString.indexOf(unsecureQuery) >= 0;
			} else {
				skip = requestUri.startsWith(uri);
			}

			if (skip) {
				chain.doFilter(req, res);
				return;
			}
		}

		AppContext context = AppContextHolder.getContext();

		if (context == null) {
			context = new DefaultAppContext();
			AppContextHolder.setContext(context);
		}

		WebsiteServiceMgr websiteMgr = BusinessFactory.getInstance().getService(WebsiteServiceMgr.SERVICE_NAME);
		context.setWebsite(websiteMgr.getWebsite());
		
		chain.doFilter(req, res);

	}

	public void init(FilterConfig config) throws ServletException {

		String uri = config.getInitParameter(PARAM_URI);
		if (uri != null) {
			this.skipUris = uri.split(",");
			for (int i = 0; i < this.skipUris.length; i++) {
				if (this.skipUris[i] == null || "".equals(this.skipUris[i].trim())) {
					continue;
				}

				this.skipUris[i] = this.skipUris[i].trim();
			}
		}

	}

}
