package dwz.framework.mail;

import org.apache.commons.mail.EmailException;

import dwz.common.MailTemplateKey;
import dwz.framework.sys.business.BusinessObjectServiceMgr;

public interface MailManager extends BusinessObjectServiceMgr {

	public void sendMail(Mail mail) throws EmailException;

	public void sendMail(Mail mail, MailTemplate template) throws EmailException;

	public void sendMail(Mail mail, MailTemplateKey vmTemplate)
			throws EmailException;

	public Mail newMail(boolean isHtmlBody);

}
