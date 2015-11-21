package dwz.business.website;

import dwz.framework.sys.business.AbstractBusinessObject;

public class Layout extends AbstractBusinessObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4381291227904220877L;
	

	private String name;

	private String css;

	private String description;

	public Layout(String name, String css, String description) {
		this.name = name;
		this.css = css;
		this.description = description;
	}

	public String getCss() {
		
		return this.css;
	}

	public String getDescription() {
		
		return this.description;
	}

	public String getName() {
		
		return this.name;
	}

	public String getId() {
		return null;
	}

}
