package com.youwei.jjfc;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.bc.web.ThreadSession;

import com.youwei.jjfc.admin.entity.User;

public class ThreadSessionHelper {

	public static User getUser(){
    	HttpSession session = ThreadSession.getHttpSession();
    	if(session==null){
    		return null;
    	}
    	return (User)session.getAttribute("user");
    }
    public static String getIp(){
    	HttpSession session = ThreadSession.getHttpSession();
    	return (String)session.getAttribute("ip");
    }
   
}
