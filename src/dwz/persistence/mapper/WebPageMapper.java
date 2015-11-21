package dwz.persistence.mapper;

import java.util.List;

import dwz.dal.BaseMapper;
import dwz.persistence.beans.WebPage;
import org.springframework.stereotype.Repository;

@Repository
public interface WebPageMapper extends BaseMapper<WebPage, Integer> {

	List<WebPage> findByTarget(String target);

}
