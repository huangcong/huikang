<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="javax.mail.Message"%>
<%@page import="com.up72.huikang.model.EmailBox"%>
<%@page import="com.up72.huikang.HuikangConstants"%>
<%@include file="service.jsp" %>
<jsp:useBean id="emailBox" class="com.up72.huikang.model.EmailBox" scope="page" />
<jsp:setProperty name="emailBox" property="*" />
<%
MailUtil mailUtil = new MailUtil();
//默认为收件箱
if($isMD("index", request)){
	Integer pageNum = $getParam(request, "pageNum", default_page_num);
	Integer range = $getParam(request, "range", default_range_num);
	//获取所有的邮件
	Message[] message = mailUtil.receive("pop.163.com", "EgoTown2010@163.com", "20100205", pageNum, range);
	request.setAttribute("messageArray", message);
	$forward("", request, response);
}else if($isMD("inbox", request)){
	int range = $getParam(request, "range", 30);//单页数据
	int start = $getParam(request, "pager.offset", 0);//数据开始值
	Pagination pagination = new Pagination(start,range); 
	String hql = "from com.up72.huikang.model.EmailBox where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
	params.put("type", HuikangConstants.emailBox.TYPE_MAIL);
	
	QueryResult queryResult = $d.findPage(hql, params, pagination);
	request.setAttribute("emailBoxList", queryResult.getItems());
	request.setAttribute("pagination", queryResult.getPagination());
	$forward("emailBoxPage", request, response);
}else if($isMD("draft", request)){
	int range = $getParam(request, "range", 30);//单页数据
	int start = $getParam(request, "pager.offset", 0);//数据开始值
	Pagination pagination = new Pagination(start,range); 
	String hql = "from com.up72.huikang.model.EmailBox where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
	params.put("type", HuikangConstants.emailBox.TYPE_DRAFT);
	
	QueryResult queryResult = $d.findPage(hql, params, pagination);
	request.setAttribute("emailBoxList", queryResult.getItems());
	request.setAttribute("pagination", queryResult.getPagination());
	$forward("", request, response);
}
%>


