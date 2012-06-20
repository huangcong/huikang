<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/common/function.jsp" %>
<% 
String CMS_LI_URL = $CTX + "/huikang/WorkDisease/do.jsp?method=" + $MD_V + "&id=";
%>
<%!
/**
 * 获取select渲染
 * @param id 为html元素id与name名称
 * @param items items为下拉数据源 item[0]为value,item[1]为显示内容
 * @param defaultValue为选中值
 */
//public java.util.List _workDisease_getList(com.up72.dao.hibernate.CommonDAOHibernate $d){
//	return $d.find("from com.up72.huikang.model.WorkDisease",null,10);
//}
%>
