package dwz.persistence.mapper;

import dwz.dal.BaseMapper;
import dwz.persistence.beans.SysRole;
import org.springframework.stereotype.Repository;

@Repository
public interface SysRoleMapper extends BaseMapper<SysRole,Integer>{
	
	SysRole findBySn(String sn);

}
