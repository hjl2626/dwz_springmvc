package dwz.dal;

import java.util.List;

import dwz.dal.object.AbstractDO;


/**
 * <strong>BaseMapper</strong><br>
 * <strong>Create on : 2012-2-8<br></strong>
 * <strong>Copyright (C) Ecointel Software Co.,Ltd.<br></strong>
 * @author peng.shi peng.shi@ecointel.com.cn<br>
 * @version <strong>ecointel-epp v1.0.0</strong><br>
 */
public interface BaseMapper<T extends AbstractDO, PK extends java.io.Serializable> {

	PK insert(T model);

	void delete(PK modelPK);
	
	T load(PK modelPK);
	
	void update(T model);

	void updateSelective(T model);
	
	int countAll();
	
	List<T> findAll();
	
	List<PK> findAllIds();
	
}
