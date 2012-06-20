/**
 * ��session���в���
 */
package com.up72.web.util;

import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.up72.model.IMember;
import com.up72.sys.ActConstants;

/**
 * 
 * @author zhangkeyi
 *  
 */

public class SessionUtil {
	//将session put 进 models里
	public static void putSessionModels(HttpServletRequest request,Map model) throws ServletException{
	        HttpSession session = request.getSession(false);   
	        if (session != null) {
	            for (Enumeration en = session.getAttributeNames(); en.hasMoreElements();) {   
	                String attribute = (String) en.nextElement();   
	                if (model.containsKey(attribute)) {  
	                    throw new ServletException("Cannot expose session attribute '" + attribute +   
	                        "' because of an existing model object of the same name");   
	                }
	                Object attributeValue = session.getAttribute(attribute);
	                model.put(attribute, attributeValue);
	            }   
	        }
	}
	//用户是否登陆
	public static boolean isLogin(HttpServletRequest request){
		HttpSession session = request.getSession();
		if(session.getAttribute(ActConstants.SESSION_USER_KEY) != null){
			return true;
		}else{
			return false;
		}
	}
	
	//用户是否登陆
	public static IMember getSessionMember(HttpServletRequest request){
		HttpSession session = request.getSession();
		IMember member = (IMember)session.getAttribute(ActConstants.SESSION_USER_KEY);
		return member;

	}
	
	public static void setSessionMember(HttpServletRequest request,IMember member){
		HttpSession session = request.getSession();
		session.setAttribute(ActConstants.SESSION_USER_KEY, member);

	}
	
	//用户角色
	public static int getSessionRoleId(HttpServletRequest request){
		HttpSession session = request.getSession();
		Integer roleId = (Integer)session.getAttribute(ActConstants.SESSION_ROLE_KEY);
		return roleId == null ? 0 : roleId.intValue();
	}
	
	public static void setSessionRoleId(HttpServletRequest request, int roleId){
		HttpSession session = request.getSession();
		session.removeAttribute(ActConstants.SESSION_ROLE_KEY);
		session.setAttribute(ActConstants.SESSION_ROLE_KEY, roleId);
	}
	
	public static void clearSessionLogin(HttpServletRequest request){
		HttpSession session = request.getSession();
		if(isLogin(request))
			session.removeAttribute(ActConstants.SESSION_USER_KEY);
	}
	

	
}
