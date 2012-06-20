<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="cmsCategory" class="com.up72.huikang.model.CmsCategory" scope="page" />
<jsp:setProperty name="cmsCategory" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(cmsCategory);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(cmsCategory.getId())){
		request.setAttribute("cmsCategory", $d.get(com.up72.huikang.model.CmsCategory.class, cmsCategory.getId()));
	}
	$forward("form.jsp",request,response);
}else if($isMD($MD_P,request)){
	//分页
	int range = $getParam(request, "range", 30);//单页数据
	int start = $getParam(request, "pager.offset", 0);//数据开始值
	String searchColumn = $getParam(request, "searchColumn", "");
	String searchColumnValue = $getParam(request, "searchColumnValue", "");
	//分页
	String hql = "from com.up72.huikang.model.CmsCategory";
	HashMap<String ,Object> params = new HashMap<String, Object>();
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(0,5)); 
	request.setAttribute("cmsCategory",cmsCategory);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getLongParams(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.CmsCategory.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(cmsCategory.getId())){
		request.setAttribute("cmsCategory",$d.get(com.up72.huikang.model.CmsCategory.class,cmsCategory.getId()));
	}
	$forward("view.jsp",request,response);
}
%>

