package com.zx.web.o;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zx.entity.Customer;
import com.zx.service.CustomerService;

@Controller
@RequestMapping("/o/customer")
public class CustomerOController {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerOController.class);
	
	@Autowired
	private CustomerService customerService;
	
	/**
	 * 首页
	 * @param mid
	 * @return
	 */
	@RequestMapping
	public ModelAndView index(@RequestParam(value="mid",defaultValue="0") Integer mid){
		ModelAndView mv = new ModelAndView();
		mv.addObject("mid", mid);
		mv.setViewName("o/choose1");
		return mv;
	}
	
	/**
	 * 用户积分测评页面
	 * @param mid
	 * @return
	 */
	@RequestMapping("/apply")
	public ModelAndView applyView(@RequestParam("mid") Integer mid){
		ModelAndView mv = new ModelAndView();
		mv.addObject("mid", mid);
		mv.setViewName("o/customer");
		return mv;
	}
	
	
	
	/**
	 * 提交测评后跳转的页面
	 * @param request
	 * @param customer
	 * @return
	 */
	@RequestMapping(value="/apply",method=RequestMethod.POST)
	public ModelAndView apply(HttpServletRequest request, Customer customer){
		ModelAndView mv = new ModelAndView();
		
		customerService.apply(customer);
		mv.addObject("customer", customer);
		mv.setViewName("o/choose2");
		return mv;
	}
	
	/**
	 * 测评成功，点击页面"只想测评"转的页面
	 * @param cid
	 * @return
	 */
	@RequestMapping("/success")
	public ModelAndView ok(Integer cid){
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("o/c_success");
		return mv;
	}
	
	/**
	 * 校验手机是否已经存在
	 * @param phone
	 * @return
	 */
	@RequestMapping("/isPhoneExist")
	@ResponseBody
	public boolean isPhoneExist(String phone){
		return customerService.isPhoneExist(phone);
	}
	
}
