<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/function.jsp"%>
<%
        $cleanCookie(request, response);
		response.sendRedirect("/pages/login.jsp");
%>
