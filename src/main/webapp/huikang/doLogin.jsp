<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/huikang/service.jsp"%>
<%@ page
	import="javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>
<%
	String username = $getParam(request, "userName", "");
	String password = $getParam(request, "password", "");
	String successPage = "/huikang/";
	String errorPage = "/login.jsp";
	String errorCode = "0";
	String errorMessage = "";
	if ($isNotEmpty(username) && $isNotEmpty(password)) {
		Member loginMember = $getMemberByName($d, username);
		if (loginMember != null) {
			if (loginMember.getEnable().intValue() == 1
					&& password.equals(loginMember.getPassword())) {
				$setMemberCookieName(response, new DESPlus()
						.encrypt($getCookieValue(loginMember)));
			} else {
				errorCode = "3";
				errorMessage = "用户密码不正确或者该用户已被禁用！";
			}
		} else {
			errorCode = "2";
			errorMessage = "该用户不存在！";
		}
	} else {
		errorCode = "1";
		errorMessage = "用户名或密码不完整！";
	}
	if ("0".equals(errorMessage)) {
		$redirect(successPage, response);
	} else {
		request.setAttribute("errorCode", errorCode);
		request.setAttribute("errorMessage", errorMessage);
		$forward(errorPage, request, response);
	}
%>