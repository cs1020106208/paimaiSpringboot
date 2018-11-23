package com.baizhi.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.baizhi.entity.User;

/**
 * �Զ���������
 * @author Carry
 *
 */
public class AuthInterceptor implements HandlerInterceptor {

	@Override
	/**
	 * �ڽ��뵽����������֮ǰ����뵽�������
	 * �����Ҫ���У��ͷ���true������ͷ���false
	 */
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2) throws Exception {
		//����¼���ܷ���
		HttpSession session = arg0.getSession();
		User user =(User) session.getAttribute("user");
		if(user!=null){
			//˵���Ѿ���¼������
			return true;
		}else{
			String url = arg0.getRequestURI();
			//�ض��򵽵�¼ҳ��
			arg1.sendRedirect("/paimai2/login.jsp?url="+url);
			return false;
		}
		
	}
	
	
	@Override
	/**
	 * ��������������ִ�����֮��return���ִ��֮ǰ
	 */
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {

	}

	@Override
	/**
	 * ����������ִ�н���֮�󣬻���뵽���������
	 */
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
					throws Exception {
		
	}

}
