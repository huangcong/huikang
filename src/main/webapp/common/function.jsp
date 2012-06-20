<%@page import="com.up72.sys.ActConstants"%>
<%@ page language="java"
	import="java.util.*,com.up72.web.util.*,com.up72.model.*"
	pageEncoding="utf-8"%>
<%@ page language="java"
	import="org.springframework.web.context.support.WebApplicationContextUtils,org.springframework.web.context.WebApplicationContext,com.up72.dao.hibernate.CommonDAOHibernate,com.up72.dao.jdbc.CommonDAOJdbc"%>
<%@page import="com.up72.huikang.model.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ taglib uri="http://www.up72.com" prefix="up72"%>
<%
	final String $MD_E = "edit";//3
	final String $MD_F = "form";//2
	final String $MD_D = "del";//4
	final String $MD_P = "page";//1
	final String $MD_V = "view";//5
	final String $MD_CF = "createFile";//6 createFile创建文件
	final String $MD_P_JSON = "page.json";//7 
	final String $MD_V_JSON = "view.json";//8 

	pageContext.setAttribute("MD_E", $MD_E);
	pageContext.setAttribute("MD_F", $MD_F);
	pageContext.setAttribute("MD_D", $MD_D);
	pageContext.setAttribute("MD_P", $MD_P);
	pageContext.setAttribute("MD_V", $MD_V);
	pageContext.setAttribute("MD_CF", $MD_CF);
	pageContext.setAttribute("MD_P_JSON", $MD_P_JSON);
	pageContext.setAttribute("MD_V_JSON", $MD_V_JSON);
	/** mvc方法 **/
%>
<%!//判断对象不为null或空
	private static final boolean $isNotEmpty(Object pattern) {
		return ObjectUtils.isNotEmpty(pattern);
	}

	private static final Long[] $getLongParams(ServletRequest request,
			String name) {
		String[] params = request.getParameterValues(name);
		if (params == null) {
			return null;
		}
		int j = params.length;
		Long[] result = new Long[j];
		for (int i = 0; i < j; i++) {
			result[i] = Long.valueOf(params[i]);
		}
		return result;
	}

	private static final void $forward(String url, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.getRequestDispatcher(url).forward(request, response);
	}

	private static final void $redirect(String url, HttpServletResponse response)
			throws Exception {
		response.sendRedirect(url);
	}

	private static final void $referer(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String referer = request.getHeader("Referer");
		response.sendRedirect(referer);
	}

	private static final String $getParam(ServletRequest request, String name,
			String defval) {
		String param = request.getParameter(name);
		return (param != null ? param.trim() : defval);
	}

	private static final int $getParam(ServletRequest request, String name,
			int defval) {
		String param = request.getParameter(name);
		int value = defval;
		if (param != null) {
			try {
				value = Integer.parseInt(param);
			} catch (NumberFormatException ignore) {
			}
		}
		return value;
	}

	private static final Long[] $getParams(ServletRequest request, String name) {
		String[] params = request.getParameterValues(name);
		if (params == null) {
			return null;
		}
		int j = params.length;
		Long[] result = new Long[j];
		for (int i = 0; i < j; i++) {
			result[i] = Long.valueOf(params[i]);
		}
		return result;
	}

	private static final String $getDateTime(String pattern) {
		return DateUtils.getDateTimeStr(pattern);
	}

	private static final void $jsMessage(JspWriter out, String message,
			String Url) throws Exception {
		out.println("<script>alert('" + message + "')</script>");
		out.println("<script>location.href='" + Url + "';</script>");
	}

	private static final void $successMsg(HttpServletRequest request,
			HttpServletResponse response, String message, String url)
			throws Exception {
		request.setAttribute("success", message);
		$forward(url, request, response);
	}

	private static final void $errorMsg(HttpServletRequest request,
			HttpServletResponse response, String message, String url)
			throws Exception {
		request.setAttribute("error", message);
		$forward(url, request, response);
	}

	private static final Integer $swithMD(HttpServletRequest request) {
		Integer result = 1;
		HashMap<String, Integer> methods = (HashMap<String, Integer>) request
				.getAttribute("$MD_MAP");
		String method = $getParam(request, "method", "page");
		if (methods.containsKey(method)) {
			result = methods.get(method);
		}
		return result;
	}

	private static final String $getMD(HttpServletRequest request) {
		String method = $getParam(request, "method", "page");
		return method;
	}

	private static final boolean $isMD(String md, HttpServletRequest request) {
		String method = $getMD(request);
		if (md.equals($getMD(request))) {
			return true;
		}
		return false;
	}

	private static final boolean $isMDJson(HttpServletRequest request) {
		String method = $getMD(request);
		if (method.endsWith(".json")) {
			return true;
		}
		return false;
	}

	//初始化method方法
	private static final void $initMD(HttpServletRequest request) {
		HashMap<String, Integer> $MD_MAP = new HashMap<String, Integer>();
		$MD_MAP.put("page", 1);
		$MD_MAP.put("form", 2);
		$MD_MAP.put("edit", 3);
		$MD_MAP.put("del", 4);
		$MD_MAP.put("view", 5);
		$MD_MAP.put("createFile", 6);
		$MD_MAP.put("page.json", 7);
		$MD_MAP.put("view.json", 8);
		request.setAttribute("$MD_MAP", $MD_MAP);
	}

	//添加method方法
	private static final void $addMD(HttpServletRequest request,
			String methodKey, Integer methodNum) {
		HashMap<String, Integer> $MD_MAP = null;
		if (!$isNotEmpty(request.getAttribute("$MD_MAP"))) {
			$initMD(request);
			$MD_MAP = (HashMap<String, Integer>) request
					.getAttribute("$MD_MAP");
		}
		$MD_MAP.put(methodKey, methodNum);
	}

	private static final void $setSessionMember(HttpServletRequest request,
			IMember member) throws Exception {
		SessionUtil.setSessionMember(request, member);
	}

	private static final IMember $getSessionMember(HttpServletRequest request)
			throws Exception {
		return SessionUtil.getSessionMember(request);
	}

	private static final String $getUserCookieName(HttpServletRequest request)
			throws Exception {
		return CookieUtil.getString(request, ActConstants.COOKIE_USER_KEY);
	}

	private static final String $getMemberCookieName(HttpServletRequest request)
			throws Exception {
		return CookieUtil.getString(request, ActConstants.COOKIE_MEMBER_KEY);
	}

	private static final void $setUserCookieName(HttpServletResponse response,
			String name) throws Exception {
		CookieUtil.setCookie(response, ActConstants.COOKIE_USER_KEY, name,
				60 * 60 * 24);
	}

	private static final void $setMemberCookieName(
			HttpServletResponse response, String name) throws Exception {
		CookieUtil.setCookie(response, ActConstants.COOKIE_MEMBER_KEY, name,
				60 * 60 * 24);
	}

	//获取后台用户cookie登录值
	private static final String $getCookieMemberName(HttpServletRequest request)
			throws Exception {
		return CookieUtil.getString(request, ActConstants.COOKIE_USER_KEY);
	}

	//设置后台用户cookie登录值
	private static final void $setCookieMemberName(
			HttpServletResponse response, String name) throws Exception {
		CookieUtil.setCookie(response, ActConstants.COOKIE_USER_KEY, name,
				60 * 60 * 24);
	}

	//清除cookie
	private static final void $cleanCookie(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		CookieUtil.clearCookieLogin(response, request);
	}

	/*********************汇康一号**************************/
	private static final String $getCookieValue(Member member) {
		return member.getId() + ":" + member.getUserName();
	}

	private static final Long $getLoginMemberId(HttpServletRequest request)
			throws Exception {
		String cookie = $getCookieMemberName(request);
		if (cookie != null && !"".equals(cookie)) {
			return Long.parseLong(cookie.split(":")[0]);
		}
		return 0L;
	}

	private static final String $getLoginMemberName(HttpServletRequest request)
			throws Exception {
		String cookie = $getCookieMemberName(request);
		if (cookie != null && !"".equals(cookie)) {
			return cookie.split(":")[1];
		}
		return "";
	}
	//获取登录用户
	private static final Member $getLoginMember(HttpServletRequest request, CommonDAOHibernate $d){
		Member member = null;
		try{
			member = (Member)$d.get(Member.class, $getLoginMemberId(request));
		}catch(Exception e){
			e.printStackTrace();
		}
		return member;
	}
	%>
<%
	ServletContext context = this.getServletContext();
	WebApplicationContext applicationContext = WebApplicationContextUtils
			.getWebApplicationContext(context);
	CommonDAOHibernate $d = (CommonDAOHibernate) applicationContext
			.getBean("commonDAOHibernate");
	CommonDAOJdbc $$d = (CommonDAOJdbc) applicationContext
			.getBean("commonDAOJdbc");
%>

