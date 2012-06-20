<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="service.jsp"%>
<%
	Long parentId = Long.parseLong($getParam(request, "id", "0"));
	out.println(_getNodesJson($d, parentId));
	out.flush();
%>


