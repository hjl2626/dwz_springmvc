package dwz.web.management;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dwz.framework.enums.Gender;
import dwz.framework.sys.exception.ServiceException;
import dwz.framework.user.User;
import dwz.framework.user.UserServiceMgr;
import dwz.framework.user.UserStatus;
import dwz.persistence.BaseConditionVO;
import dwz.web.BaseController;

@Controller("management.userController")
@RequestMapping(value="/management/user")
public class UserController extends BaseController{
	@Autowired
	private UserServiceMgr userMgr;

	@RequestMapping("")
	public String list(BaseConditionVO vo, Model model) {
		List<User> userList = userMgr.searchUser(vo);
		Integer totalCount = userMgr.searchUserNum(vo);
		
		model.addAttribute("userList", userList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("userStatusList", UserStatus.values());
		model.addAttribute("pageSize", vo.getPageSize());

		return "/management/user/list";
	}
	
	@RequestMapping("/add")
	public String add(Model model) {
		model.addAttribute("genderList", Gender.values());
		return "/management/user/add";
	}
	
	@RequestMapping("/edit/{userId}")
	public String edit(@PathVariable("userId") int userId, Model model) {
		User user = userMgr.getUser(userId);

		model.addAttribute("vo", user);
		model.addAttribute("genderList", Gender.values());

		return "/management/user/edit";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ModelAndView insert(User user) {
		try {
			userMgr.addUser(user);
		} catch (ServiceException e) {
			return ajaxDoneError(e.getMessage());
		}

		return ajaxDoneSuccess(getMessage("msg.operation.success"));
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(User user) {
		userMgr.updUser(user);
		return ajaxDoneSuccess(getMessage("msg.operation.success"));
	}
	
	@RequestMapping("/delete/{userId}")
	public ModelAndView delete(@PathVariable("userId") int userId) {

		userMgr.delUser(userId);

		return ajaxDoneSuccess(getMessage("msg.operation.success"));
	}
}
