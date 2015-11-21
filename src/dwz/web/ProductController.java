package dwz.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import dwz.persistence.BaseConditionVO;

@Controller
public class ProductController extends BaseController{

//	@Autowired
//	private ProductServiceMgr manager;
	
	@RequestMapping("/products")
	public String list(BaseConditionVO vo, Model model) {

		vo.setTotalCount(100);

		model.addAttribute("vo", vo);
		return "/product/list";
	}
	
	@RequestMapping("/product/{productId}")
	public String view(@PathVariable("productId") int productId, Model model) {

//		model.addAttribute("product", product);
		
		return "/product/view";
	}
	
}