package com.baizhi.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.baizhi.entity.User;

/**
 * 自定义拦截器
 * @author Carry
 *
 */
public class AuthInterceptor implements HandlerInterceptor {

	@Override
	/**
	 * 在进入到处理器方法之前会进入到这个方法
	 * 如果需要放行，就返回true；否则就返回false
	 */
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2) throws Exception {
		//不登录不能访问
		HttpSession session = arg0.getSession();
		User user =(User) session.getAttribute("user");
		if(user!=null){
			//说明已经登录、放行
			return true;
		}else{
			String url = arg0.getRequestURI();
			//重定向到登录页面
			arg1.sendRedirect("/paimai2/login.jsp?url="+url);
			return false;
		}
		
	}
	
	
	@Override
	/**
	 * 处理器方法代码执行完毕之后，return语句执行之前
	 */
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {

	}

	@Override
	/**
	 * 处理器方法执行结束之后，会进入到这个方法中
	 */
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
					throws Exception {
		
	}

}
