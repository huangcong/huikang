/**
 * ��cookie���в���
 */
package com.up72.web.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.up72.sys.ActConstants;

/**
 * 
 * @author zhangkeyi
 *  
 */

public class CookieUtil {
	public static Logger logger = Logger.getLogger(sun.reflect.Reflection.getCallerClass(1));

	/**
	 * 通过key得到cookies中的value
	 * @param request
	 * @param key
	 * @return
	 */
	public static String getString (HttpServletRequest request, String key) {
		String value = null;
		Cookie cookie = null;
		Cookie cookies[] = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				logger.info("cookies.length" + cookies.length);
				logger.info("cookies[i].getName()" + cookies[i].getName());
				logger.info("cookies[i].getValue()" + cookies[i].getValue());
				if (cookies[i].getName().equals(key)){
					cookie = cookies[i];
				}
			}

		}
		if (cookie != null)
			value = cookie.getValue();
		if (value == null)
			value = "";
		try {
			value = URLDecoder.decode(value,"UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return value;
	}
	
	/**
	 * 根据登陆用户key和用户名判断用户是否登陆
	 * @param request
	 * @param loginKey
	 * @param loginName
	 * @return
	 */
	public static boolean isLogin (HttpServletRequest request) {
		logger.debug("getString(request,ActConstants.COOKIE_USER_KEY):" + getString(request,ActConstants.COOKIE_USER_KEY));
		if(getString(request,ActConstants.COOKIE_USER_KEY) != null && getString(request,ActConstants.COOKIE_USER_KEY) != ""){			
			return true;
		}
		return false;
	}
	public static void clearCookieLogin (HttpServletResponse response ,HttpServletRequest request) {
		if(isLogin(request))
			setCookie(response,ActConstants.COOKIE_USER_KEY,"",0);
	}
	
	public static String getLoginName (HttpServletRequest request) {
		return getString(request,ActConstants.COOKIE_USER_KEY);
	}
	
	public static void setLoginName (HttpServletResponse response, String value,int seconds) {
		setCookie(response,ActConstants.COOKIE_USER_KEY,value,seconds);
	}
	
	/**
	 * 写数据到cookies中
	 * @param response
	 * @param name
	 * @param value
	 * @param seconds
	 */
	public static void setCookie(HttpServletResponse response, String key,
			String value, int seconds) {
		try {
			logger.debug("key:" + key);
			logger.debug("value:" + URLEncoder.encode(value,"UTF-8"));
			Cookie cookie = new Cookie(key, URLEncoder.encode(value,"UTF-8"));
			cookie.setMaxAge(seconds);
			//cookie.setDomain(".192.117");
			cookie.setPath("/");
			response.addCookie(cookie);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
