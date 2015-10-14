package com.zq.www.common;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 
 * @author gamei
 * 
 */
public class ManagerLoginFilter implements Filter {

    public void destroy() {
	// TODO Auto-generated method stub
	
    }

    public void doFilter(ServletRequest arg0, ServletResponse arg1,
	    FilterChain arg2) throws IOException, ServletException {
	
	HttpServletRequest request=(HttpServletRequest) arg0;
	HttpServletResponse response=(HttpServletResponse) arg1;
	String a=request.getRequestURI();
	String b=a.substring(a.length()-3);//获取 字符串最后3个字符
	
	//只对jsp为后缀的进行拦截
	if(b.equals("jsp")) {
	if(request.getSession().getAttribute("user")!=null)
	{
	    arg2.doFilter(arg0, arg1);
	}else {
	    response.sendRedirect(request.getContextPath()+"/login_back.jsp");
	}
	}
	else {
	    arg2.doFilter(arg0, arg1);
	}
	
	
    }

    public void init(FilterConfig arg0) throws ServletException {
	
    }

}
