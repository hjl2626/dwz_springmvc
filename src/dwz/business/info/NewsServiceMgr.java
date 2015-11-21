package dwz.business.info;

import java.util.List;

import dwz.framework.sys.business.BusinessObjectServiceMgr;
import dwz.persistence.BaseConditionVO;

public interface NewsServiceMgr extends BusinessObjectServiceMgr {
	String SERVICE_NAME = "newsServiceMgr";

	void createNews(News news);

	void createAndPublishNews(News news);

	void publishNews(Integer id);

	void disableNews(Integer id);

	void updateNews(News news);

	void removeNews(Integer id);

	News getNews(Integer id);

	News getNewsOnWeb(Integer id);

	List<News> searchNews(BaseConditionVO vo);

	Integer searchNewsNum(BaseConditionVO vo);

	News getPrevNews(News news);

	News getNextNews(News news);

	List<News> listNewsOnWeb(NewsType newsType, Integer startIndex, Integer count);

}
