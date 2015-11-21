package dwz.persistence.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Repository;

import dwz.dal.BaseMapper;
import dwz.persistence.BaseConditionVO;
import dwz.persistence.beans.SysUser;

@Repository
public interface SysUserMapper extends BaseMapper<SysUser, Integer> {

	SysUser findByUsername(String username);
	
	SysUser findByVerifyCode(String verifyCode);
	
	Integer isUniqueUsername(@Param("id") Integer id, @Param("username") String username);

	void updateStatus(@Param("id") int id, @Param("status") String userStatus,
			@Param("updateDate") Date updateDate);
	
	// 查询
	List<SysUser> findPageBreakByCondition(BaseConditionVO vo, RowBounds rb);

	Integer findNumberByCondition(BaseConditionVO vo);
}
