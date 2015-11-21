/*
 * Powered By [dwz4j-framework]
 * Web Site: http://j-ui.com
 * Google Code: http://code.google.com/p/dwz4j/
 * Generated 2012-09-10 08:51:33 by code generator
 */
package dwz.framework.user;

import java.util.Date;

import dwz.common.util.EnumUtils;
import dwz.framework.enums.Gender;
import dwz.framework.sys.business.AbstractBusinessObject;
import dwz.persistence.beans.SysUser;

public class User extends AbstractBusinessObject {
	private static final long serialVersionUID = 1L;
	private SysUser sysUser;

	/* generateConstructor */
	public User() {
		this.sysUser = new SysUser();
		this.sysUser.setStatus(UserStatus.PENDING.toString());
	}

	public User(SysUser sysUser) {
		this.sysUser = sysUser;
	}

	public SysUser getSysUser() {
		return this.sysUser;
	}

	public Integer getId() {
		return this.sysUser.getId();
	}

	public void setId(Integer id) {
		this.sysUser.setId(id);
	}

	public Gender getGender() {
		if (EnumUtils.isDefined(Gender.values(), sysUser.getGender()))
			return Gender.valueOf(sysUser.getGender());

		return null;
	}

	public void setGender(Gender gender) {
		if (gender != null)
			sysUser.setGender(gender.toString());
	}

	public String getUsername() {
		return this.sysUser.getUsername();
	}

	public void setUsername(String username) {
		this.sysUser.setUsername(username);
	}

	public String getPassword() {
		return this.sysUser.getPassword();
	}

	public void setPassword(String password) {
		this.sysUser.setPassword(password);
	}

	public String getVerify() {
		return this.sysUser.getVerify();
	}

	public void setVerify(String verify) {
		this.sysUser.setVerify(verify);
	}

	public String getNickname() {
		return this.sysUser.getNickname();
	}

	public void setNickname(String nickname) {
		this.sysUser.setNickname(nickname);
	}

	public String getFirstName() {
		return this.sysUser.getFirstName();
	}

	public void setFirstName(String firstName) {
		this.sysUser.setFirstName(firstName);
	}

	public String getLastName() {
		return this.sysUser.getLastName();
	}

	public void setLastName(String lastName) {
		this.sysUser.setLastName(lastName);
	}

	public String getEmail() {
		return this.sysUser.getEmail();
	}

	public void setEmail(String email) {
		this.sysUser.setEmail(email);
	}

	public String getPhone() {
		return this.sysUser.getPhone();
	}

	public void setPhone(String phone) {
		this.sysUser.setPhone(phone);
	}

	public UserStatus getStatus() {
		if (EnumUtils.isDefined(UserStatus.values(), sysUser.getStatus()))
			return UserStatus.valueOf(sysUser.getStatus());

		return UserStatus.INACTIVE;
	}

	public Date getBirthDate() {
		return this.sysUser.getBirthDate();
	}

	public void setBirthDate(Date birthDate) {
		this.sysUser.setBirthDate(birthDate);
	}

	public Date getInsertDate() {
		return this.sysUser.getInsertDate();
	}

	public Date getUpdateDate() {
		return this.sysUser.getUpdateDate();
	}

}
