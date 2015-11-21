package dwz.framework.mail;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import dwz.framework.junit.BaseJunitCase;

public class MailManagerTest extends BaseJunitCase{
	@Autowired
	private MailManager mailMgr;
	
	@Test
	public void testSendMail() {
		System.out.println("testSendMail...");

		try {
			Mail mail = mailMgr.newMail(true);

			mail.setFrom("test@j-ui.com");
			mail.addTo("zhanghuihua@sohu.com","张慧华");
			mail.setSubject("test");
			mail.setMsg("This is a test.");
			mailMgr.sendMail(mail);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
