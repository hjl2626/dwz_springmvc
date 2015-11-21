package dwz.business.website;

import java.util.ArrayList;
import java.util.Collection;
import java.util.TreeMap;

import dwz.framework.sys.business.AbstractBusinessObject;

public class Template extends AbstractBusinessObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6533573941461123531L;

	private String name;

	private String label;

	private String description;

	private String prePicBase;

	private String prePicExt;
	
	private TreeMap<String, LayoutKey> layoutKeys = null;
	private TreeMap<LayoutKey, Layout> layouts = null;

	private TreeMap<String, Theme> themes = null;

	public Template(String name, String label, String description,
			String prePicBase, String prePicExt) {
		this.name = name;
		this.label = label;
		this.description = description;
		this.prePicBase = prePicBase;
		this.prePicExt = prePicExt;
		this.layoutKeys = new TreeMap<String, LayoutKey>();
		this.layouts = new TreeMap<LayoutKey, Layout>();
		this.themes = new TreeMap<String, Theme>();
	}

	public Collection<Layout> getLayouts() {
		
		return this.layouts == null ? new ArrayList<Layout>(0) : this.layouts
				.values();
	}

	public Collection<Theme> getThemes() {
		
		return this.themes == null ? new ArrayList<Theme>(0) : this.themes
				.values();
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
		
		return this.name;
	}

	public Layout getDefaultLayout() {
		return this.layouts.get(this.layouts.firstKey());
	}

	public String getDefaultPicUrl() {
		String defaultPicUrl = this.getPrePicBase() + "/"
				+ this.getDefaultLayout().getName() + "_"
				+ this.getDefaultTheme().getName() + "_lg."
				+ this.getPrePicExt();
		return defaultPicUrl;
	}

	public Theme getDefaultTheme() {
		return this.themes.get(this.themes.firstKey());
	}

	public String getDefaultSmPicUrl() {
		String defaultSmPicUrl = this.getPrePicBase() + "/"
				+ this.getDefaultLayout().getName() + "_"
				+ this.getDefaultTheme().getName() + "_sm."
				+ this.getPrePicExt();
		return defaultSmPicUrl;
	}

	public String getPrePicBase() {
		
		return this.prePicBase;
	}

	public String getPrePicExt() {
		
		return this.prePicExt;
	}

	public void addLayout(String layoutName, String css, int index, String desc) {
		Layout commonLayout = new Layout(layoutName, css, desc);
		LayoutKey layoutKey = new LayoutKey(layoutName, index);
		layouts.put(layoutKey, commonLayout);
		layoutKeys.put(layoutName, layoutKey);
	}

	public void addTheme(String themeName, String css, String label, String desc) {
		Theme commonTheme = new Theme(themeName, css, label, desc);
		themes.put(themeName, commonTheme);
	}

	public Layout getLayoutByName(String layoutName) {
		return this.layouts.get(layoutKeys.get(layoutName));
	}

	public Theme getThemeByName(String themeName) {
		return this.themes.get(themeName);
	}
}
