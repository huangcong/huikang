<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="workGroup" class="com.up72.huikang.model.WorkGroup" scope="page" />
<jsp:setProperty name="workGroup" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(workGroup);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(workGroup.getId())){
		request.setAttribute("workGroup", $d.get(com.up72.huikang.model.WorkGroup.class, workGroup.getId()));
	}
	$forward("form.jsp",request,response);
}else if($isMD($MD_P,request)){
	//分页
	int range = $getParam(request, "range", 30);//单页数据
	int start = $getParam(request, "pager.offset", 0);//数据开始值
	String searchColumn = $getParam(request, "searchColumn", "");
	String searchColumnValue = $getParam(request, "searchColumnValue", "");
	/**int maxIndexPages = $getParam(request, "maxIndexPages", 5);//分页bar索引数可修改，默认为5
	Pagination pagination = new Pagination(start,range,maxIndexPages);**/
	Pagination pagination = new Pagination(start,range); 
	//分页
	//查询
	String hql = "from com.up72.huikang.model.WorkGroup where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(workGroup.getId())) {
		params.put(" id", workGroup.getId());
    }
    if($isNotEmpty(workGroup.getName())) {
		params.put(" name", workGroup.getName());
    }
    if($isNotEmpty(workGroup.getWorkGroupId())) {
		params.put(" workGroupId", workGroup.getWorkGroupId());
    }
    if($isNotEmpty(workGroup.getDescrption())) {
		params.put(" descrption", workGroup.getDescrption());
    }
    if($isNotEmpty(workGroup.getSort())) {
		params.put(" sort", workGroup.getSort());
    }
    if($isNotEmpty(workGroup.getEnable())) {
		params.put(" enable", workGroup.getEnable());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("workGroup",workGroup);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/workGroup/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.WorkGroup",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.WorkGroup.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(workGroup.getId())){
		request.setAttribute("workGroup",$d.get(com.up72.huikang.model.WorkGroup.class,workGroup.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(workGroup.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + workGroup.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,workGroup.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> workGroupIds = $d.find("select id from com.up72.huikang.model.WorkGroup");
		for (Integer item : workGroupIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


