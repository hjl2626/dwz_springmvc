package dwz.framework.user;

import static org.junit.Assert.fail;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import dwz.framework.config.AppConfiguration;
import dwz.framework.junit.BaseJunitCase;
import dwz.persistence.BaseConditionVO;

public class UserServiceMgrTest extends BaseJunitCase{
	@Autowired
	private UserServiceMgr userMgr;
	
	@Test
	public void testRegister() {
		fail("Not yet implemented");
	}

	@Test
	public void testAddUser() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdUser() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetUser() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetUserByUsername() {
		fail("Not yet implemented");
	}

	@Test
	public void testDelUser() {
		fail("Not yet implemented");
	}

	@Test
	public void testSearchUser() {
		BaseConditionVO vo = new BaseConditionVO();
		
		List<User> users = userMgr.searchUser(vo);
		
		for (User user: users) {
			System.out.println("user: "+user.getEmail());
		}
		System.out.println(AppConfiguration.getInstance().getStaticContentPath());
	}

	@Test
	public void testSearchUserNum() {
		fail("Not yet implemented");
	}

	@Test
	public void testActiveUser() {
		fail("Not yet implemented");
	}

	@Test
	public void testInActiveUsesr() {
		fail("Not yet implemented");
	}

}
