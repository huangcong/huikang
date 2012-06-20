<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.up72.huikang.model.Dictionary"%>
<%@include file="/common/function.jsp"%>
<%!/**
	 * 获取select渲染
	 * @param id 为html元素id与name名称
	 * @param items items为下拉数据源 item[0]为value,item[1]为显示内容
	 * @param defaultValue为选中值
	 */
	//public java.util.List _dictionary_getList(com.up72.dao.hibernate.CommonDAOHibernate $d){
	//	return $d.find("from com.up72.huikang.model.Dictionary",null,10);
	//}
	public String _getNodesJson(com.up72.dao.hibernate.CommonDAOHibernate $d, Long parentId){
		if(parentId == null){
			parentId = 0L;
		}
		StringBuffer sb = new StringBuffer("[");
		List<Dictionary> list = $d.find("from Dictionary where dictionaryId = ? order by sort asc", new Object[]{parentId});
		for(Dictionary dic : list){
			sb.append("{");
			sb.append("id:").append("'").append(dic.getId()).append("'").append(",");
			sb.append("name:").append("'").append(dic.getName()).append("'").append(",");
			sb.append("isParent:").append(dic.isParent());
			sb.append("},");
		}
		if(list != null && list.size() > 0){
			sb.deleteCharAt(sb.length() - 1);
		}
		sb.append("]");
		return sb.toString();
	}
%>
