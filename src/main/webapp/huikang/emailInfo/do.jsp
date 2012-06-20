<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<%
//$forward("doCase.jsp",request,response);//case模式mvc
$forward("doIf.jsp",request,response);//if模式mvc
//$forward("doJson.jsp",request,response);//json模式mvc
%>