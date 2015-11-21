package dwz.business.website;

import dwz.framework.sys.business.AbstractBusinessObject;

public class Theme extends AbstractBusinessObject {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8167408310042617506L;

	private String name;

	private String css;

	private String label;

	private String description;

	public Theme(String name, String css, String label, String description) {
		this.name = name;
		this.css = css;
		this.label = label;
		this.description = description;
	}

	public String getCss() {

		return this.css;
	}

	public String getDescription() {

		return this.description;
	}

	public String getLabel() {

		return this.label;
	}

	public String getName() {

		return this.name;
	}

	public String getId() {

		return null;
	}

}
