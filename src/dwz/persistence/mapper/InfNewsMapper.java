package dwz.persistence.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Repository;

import dwz.business.info.NewsStatus;
import dwz.dal.BaseMapper;
import dwz.persistence.beans.InfNews;

@Repository
public interface InfNewsMapper extends BaseMapper<InfNews, Integer> {

	// 查询
	List<InfNews> findPageBreakByCondition(
			@Param("keywords") String keywords,
			@Param("type") String type,
			@Param("status") String status,
			@Param("startDate") Date startDate,
			@Param("endDate") Date endDate, RowBounds rb);

	Integer findNumberByCondition(@Param("keywords") String keywords,
			@Param("type") String type,
			@Param("status") String status,
			@Param("startDate") Date startDate,
			@Param("endDate") Date endDate);
	
	InfNews findPrev(@Param("type") String type, 
			@Param("updateDate") Date updateDate);

	InfNews findNext(@Param("type") String type, 
			@Param("updateDate") Date updateDate);

	void updateAllStatus(@Param("id") Integer id, @Param("status") String status, @Param("updateDate") Date updateDate);

	List<InfNews> findPageBreakByTypeAndStatus(@Param("type")String type, @Param("status") String status, RowBounds rb);

}
