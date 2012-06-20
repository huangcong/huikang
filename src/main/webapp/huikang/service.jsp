<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.up72.huikang.model.Member"%>
<%@include file="/common/function.jsp"%>
<%!/**
	 * 获取select渲染
	 * @param id 为html元素id与name名称
	 * @param items items为下拉数据源 item[0]为value,item[1]为显示内容
	 * @param defaultValue为选中值
	 */
	//public java.util.List _workOrder_getList(com.up72.dao.hibernate.CommonDAOHibernate $d){
	//	return $d.find("from com.up72.huikang.model.WorkOrder",null,10);
	//}
	public Member $getMemberByName(
			com.up72.dao.hibernate.CommonDAOHibernate $d, String userName) {
		List<Member> list = $d.find("from Member where userName = ?", userName);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}%>
