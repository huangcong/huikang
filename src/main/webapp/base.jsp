<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.up72.huikang.model.Member"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="com.up72.dao.hibernate.CommonDAOHibernate"%>
<%@page import="com.up72.sys.ActConstants"%>
<%@page import="com.up72.web.util.CookieUtil"%>
<%@page import="com.up72.web.util.DESPlus"%>
<%
	ServletContext context1 = this.getServletContext();
	WebApplicationContext applicationContext1 = WebApplicationContextUtils
			.getWebApplicationContext(context1);
	CommonDAOHibernate $d1 = (CommonDAOHibernate) applicationContext1
			.getBean("commonDAOHibernate");
	String cookie = CookieUtil.getString(request, ActConstants.COOKIE_MEMBER_KEY);
	/***
	if(cookie != null && !"".equals(cookie)){
		cookie = new DESPlus().decrypt(cookie);
		Long loginMemberId = Long.parseLong(cookie.split(":")[0]);
		//String loginMemberName = cookie.split(":")[1];
		Member loginMember = (Member)$d1.get(Member.class, loginMemberId);
		if(loginMember != null){
			request.setAttribute("loginMember", loginMember);
		}else{
			response.sendRedirect("/login.jsp");
		}
	}else{
		response.sendRedirect("/login.jsp");
	}
	***/
%>