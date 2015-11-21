package dwz.framework.user;

import java.util.List;

import dwz.framework.sys.business.BusinessObjectServiceMgr;
import dwz.framework.sys.exception.ServiceException;
import dwz.persistence.BaseConditionVO;

public interface UserServiceMgr extends BusinessObjectServiceMgr {
	String SERVICE_NAME = "userServiceMgr";
	
	/**
	 * 前台用户注册
	 * 
	 * @param user
	 * @throws ServiceException 
	 */
	void register(User user) throws ServiceException;

	void sendVerifyEmail(User user) throws ServiceException;
	
	void verify(String verifyCode) throws ServiceException;

	/**
	 * 后台添加用户
	 * 
	 * @param user
	 */
	void addUser(User user) throws ServiceException;

	void updUser(User user);

	User getUser(int id);

	User getUserByUsername(String username);

	void delUser(int id);

	List<User> searchUser(BaseConditionVO vo);

	Integer searchUserNum(BaseConditionVO vo);

	/**
	 * 激活一个用户
	 * 
	 * @param id
	 */
	void activeUser(int id);

	/**
	 * 禁用一个用户
	 * 
	 * @param id
	 */
	void inActiveUsesr(int id);

}
