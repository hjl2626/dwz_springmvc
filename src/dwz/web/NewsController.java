package dwz.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import dwz.business.info.News;
import dwz.business.info.NewsServiceMgr;
import dwz.business.info.NewsType;
import dwz.persistence.BaseConditionVO;

@Controller
@RequestMapping(value = "/news")
public class NewsController extends BaseController{

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
		return "/news/list";
	}
	
	@RequestMapping("/view/{newsId}")
	public String view(@PathVariable("newsId") int newsId, Model model) {
		News news = newsMgr.getNews(newsId);

		model.addAttribute("newsTypes", NewsType.values());
		model.addAttribute("news", news);
		
		return "/news/view";
	}
	
}