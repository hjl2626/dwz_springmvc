package dwz.framework.user.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.commons.mail.EmailException;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dwz.common.MailTemplateKey;
import dwz.framework.config.AppConfiguration;
import dwz.framework.config.Constants;
import dwz.framework.mail.Mail;
import dwz.framework.mail.MailManager;
import dwz.framework.sys.business.AbstractBusinessObjectServiceMgr;
import dwz.framework.sys.business.BusinessFactory;
import dwz.framework.sys.exception.ServiceException;
import dwz.framework.user.User;
import dwz.framework.user.UserServiceMgr;
import dwz.framework.user.UserStatus;
import dwz.persistence.BaseConditionVO;
import dwz.persistence.beans.SysUser;
import dwz.persistence.mapper.SysUserMapper;

@Transactional(rollbackFor = Exception.class)
@Service(UserServiceMgr.SERVICE_NAME)
public class UserServiceMgrImpl extends AbstractBusinessObjectServiceMgr
		implements UserServiceMgr {
	
	@Autowired
	private SysUserMapper userMapper;
	
	private boolean isUniqueUsername(User user) {
		Integer id = user.getId() != null ? user.getId() : 0;
		return userMapper.isUniqueUsername(id, user.getUsername()) < 1;
	}
	
	public void register(User user) throws ServiceException{
		if (!isUniqueUsername(user)) {
			throw new ServiceException(getMessage("msg.username.unique"));
		}
		
		Date now = new Date();
		SysUser po = user.getSysUser();
		po.setVerify(UUID.randomUUID().toString());
		po.setInsertDate(now);
		po.setUpdateDate(now);
		
		userMapper.insert(po);
		
		sendVerifyEmail(user);
	}

	public void sendVerifyEmail(User user) throws ServiceException{
		AppConfiguration config = getAppConfig();
		MailManager mailMgr = BusinessFactory.getInstance().getService("mailServiceMgr");
		try {
			String systemEmail = config.getString("app.system.email");
			Mail mail = mailMgr.newMail(true);

			mail.setFrom(systemEmail);
			mail.addTo(user.getEmail());

			mail.addContent("user", user);
			
			mail.addContent("companyName", config.getString("app.company.name"));
			mail.addContent("webServer", config.getWebServer());

			mailMgr.sendMail(mail, MailTemplateKey.verifyEmail);
		} catch (EmailException e) {
			log.error(e);
			throw new ServiceException(getMessage("msg.send.mail.failure"));
		}
	}
	public void verify(String verifyCode) throws ServiceException{
		SysUser po = userMapper.findByVerifyCode(verifyCode);
		
		if (po == null) {
			throw new ServiceException(getMessage("msg.user.verify.failure"));
		}
		
		if (!UserStatus.PENDING.toString().equals(po.getStatus())) {
			throw new ServiceException(getMessage("msg.user.verify.duplicate"));
		}
		
		userMapper.updateStatus(po.getId(), UserStatus.ACTIVE.toString(), new Date());
		
		request.getSession().setAttribute(Constants.AUTHENTICATION_KEY, new User(po));
	}
	
	public void addUser(User user) throws ServiceException{
		if (!isUniqueUsername(user)) {
			throw new ServiceException(getMessage("msg.username.unique"));
		}
		
		Date now = new Date();
		SysUser po = user.getSysUser();
		po.setInsertDate(now);
		po.setUpdateDate(now);
		po.setStatus(UserStatus.ACTIVE.toString());
		
		userMapper.insert(po);
	}

	public void updUser(User user) {

		Date now = new Date();
		SysUser po = user.getSysUser();
		po.setUpdateDate(now);
		
		userMapper.updateSelective(po);
	}

	public void delUser(int id) {
		userMapper.updateStatus(id, UserStatus.DELETED.toString(), new Date());
	}

	public List<User> searchUser(BaseConditionVO vo) {
		List<User> bos = new ArrayList<User>();
		RowBounds rb = new RowBounds(vo.getStartIndex(), vo.getPageSize());
		List<SysUser> pos = userMapper.findPageBreakByCondition(vo, rb);
		for (SysUser po : pos) {
			bos.add(new User(po));
		}
		return bos;
	}

	public Integer searchUserNum(BaseConditionVO vo) {
		Integer count = userMapper.findNumberByCondition(vo);

		return count;
	}

	public void activeUser(int id) {
		userMapper.updateStatus(id, UserStatus.ACTIVE.toString(), new Date());
	}

	public void inActiveUsesr(int id) {
		userMapper.updateStatus(id, UserStatus.INACTIVE.toString(), new Date());
	}

	public User getUser(int id) {
		SysUser po = userMapper.load(id);
		if (po == null) return null;
		
		return new User(po);
	}

	public User getUserByUsername(String username){
		SysUser po = userMapper.findByUsername(username);

		if (po == null) return null;
		
		return new User(po);
	}

}
