package dwz.web.management;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dwz.business.enums.PageTarget;
import dwz.business.website.Page;
import dwz.business.website.WebsiteServiceMgr;
import dwz.framework.sys.exception.ServiceException;
import dwz.web.BaseController;

@Controller("management.webpageController")
@RequestMapping(value = "/management/webpage")
public class WebpageController extends BaseController {
	@Autowired
	private WebsiteServiceMgr websiteMgr;

	@RequestMapping("/list")
	public String list(Model model) {
		List<Page> pages = websiteMgr.getPages();

		model.addAttribute("pages", pages);

		return "/management/webpage/list";
	}


	@RequestMapping("/add")
	public String add(Model model) {
		model.addAttribute("pageTargets", PageTarget.values());

		return "/management/webpage/add";
	}
	
	@RequestMapping("/edit/{pageId}")
	public String edit(@PathVariable("pageId") int pageId, Model model) {
		Page page = websiteMgr.getPage(pageId);

		model.addAttribute("page", page);
		model.addAttribute("pageTargets", PageTarget.values());
		
		return "/management/webpage/edit";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ModelAndView insert(Page page) {
		try {
			websiteMgr.createPage(page);
		} catch (ServiceException e) {
			return ajaxDoneError(e.getLocalizedMessage());
		}

		return ajaxDoneSuccess(getMessage("msg.operation.success"));
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(Page page) {
		
		websiteMgr.updatePage(page);
		return ajaxDoneSuccess(getMessage("msg.operation.success"));
	}
	
	@RequestMapping("/delete/{pageId}")
	public ModelAndView delete(@PathVariable("pageId") int pageId) {
		websiteMgr.deletePage(pageId);
		return ajaxDoneSuccess(getMessage("msg.operation.success"));
	}
}
