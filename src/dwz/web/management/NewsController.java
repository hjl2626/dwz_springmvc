package dwz.web.management;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dwz.business.info.News;
import dwz.business.info.NewsServiceMgr;
import dwz.business.info.NewsType;
import dwz.persistence.BaseConditionVO;
import dwz.web.BaseController;

@Controller("management.newsController")
@RequestMapping(value = "/management/news")
public class NewsController extends BaseController {
	@Autowired
	private NewsServiceMgr newsMgr;
	
	@RequestMapping("")
	public String list(BaseConditionVO vo, Model model) {
		List<News> newsList = newsMgr.searchNews(vo);
		int totalCount = newsMgr.searchNewsNum(vo);
		vo.setTotalCount(totalCount);
		
		model.addAttribute("newsTypes", NewsType.values());
		model.addAttribute("newsList", newsList);
		model.addAttribute("vo", vo);
		return "/management/news/list";
	}
	
	@RequestMapping("/add")
	public String add(Model model) {
		model.addAttribute("newsTypes", NewsType.values());
		return "/management/news/add";
	}
	
	@RequestMapping("/edit/{newsId}")
	public String edit(@PathVariable("newsId") int newsId, Model model) {
		News news = newsMgr.getNews(newsId);

		model.addAttribute("newsTypes", NewsType.values());
		model.addAttribute("news", news);
		
		return "/management/news/edit";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ModelAndView insert(News news) {
		newsMgr.createNews(news);

		return ajaxDoneSuccess(getMessage("msg.operation.success"));
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(News news) {
		newsMgr.updateNews(news);
		return ajaxDoneSuccess(getMessage("msg.operation.success"));
	}
	@RequestMapping("/publish/{newsId}")
	public ModelAndView publish(@PathVariable("newsId") int newsId) {
		newsMgr.publishNews(newsId);
		return ajaxDoneSuccess(getMessage("msg.operation.success"));
	}
	@RequestMapping("/disable/{newsId}")
	public ModelAndView disable(@PathVariable("newsId") int newsId) {
		newsMgr.disableNews(newsId);
		return ajaxDoneSuccess(getMessage("msg.operation.success"));
	}
	
	@RequestMapping("/delete/{newsId}")
	public ModelAndView delete(@PathVariable("newsId") int newsId) {
		newsMgr.removeNews(newsId);
		return ajaxDoneSuccess(getMessage("msg.operation.success"));
	}
}
