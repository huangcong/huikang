<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="service.jsp"%>
<%
	$forward("doIf.jsp", request, response);//if模式mvc
%>