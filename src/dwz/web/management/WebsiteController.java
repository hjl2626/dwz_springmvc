package dwz.web.management;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dwz.business.website.Template;
import dwz.business.website.Website;
import dwz.business.website.WebsiteServiceMgr;
import dwz.framework.sys.exception.ServiceException;
import dwz.web.BaseController;

@Controller("management.websiteController")
@RequestMapping(value = "/management/website")
public class WebsiteController extends BaseController {
	@Autowired
	private WebsiteServiceMgr websiteMgr;

	@RequestMapping("/edit")
	public String edit(Model model) {
		model.addAttribute("website", websiteMgr.getWebsite());
		model.addAttribute("templates", websiteMgr.getTemplates());
		model.addAttribute("defaultTemplate", websiteMgr.getDefaultTemplate());

		return "/management/website/edit";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView save(Website website) {
		try {
			websiteMgr.saveWebsite(website);
		} catch (ServiceException e) {
			return ajaxDoneError(e.getLocalizedMessage());
		}
		return ajaxDoneSuccess(getMessage("msg.operation.success"));
	}
	
	@RequestMapping("/preview/{templateName}")
	public String preview(@PathVariable("templateName") String templateName, Model model) {
		Template template = websiteMgr.getTemplateByName(templateName);
		model.addAttribute("template", template);
		
		return "/management/website/preview";
	}
}
