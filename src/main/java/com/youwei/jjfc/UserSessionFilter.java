package com.youwei.jjfc;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bc.sdak.GException;
import org.bc.web.PlatformExceptionType;
import org.bc.web.ThreadSession;

public class UserSessionFilter implements Filter {


	// Filter注销方法
	@Override
	public void destroy() {

	}

	// filter要实现的功能
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req  = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
//		ThreadSession.setHttpServletRequest(req);
//		ThreadSession.setHttpServletResponse(resp);
		ThreadSession.setHttpSession(req.getSession());
		try{
			ThreadSessionHelper.getUser();
		}catch(GException ex){
			if(ex.getType()==PlatformExceptionType.UserOfflineException){
				resp.sendRedirect("/jjfc/admin/public/login.jsp");
			}
		}
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

}
