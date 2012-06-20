<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="workDisease" class="com.up72.huikang.model.WorkDisease" scope="page" />
<jsp:setProperty name="workDisease" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(workDisease);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(workDisease.getId())){
		request.setAttribute("workDisease", $d.get(com.up72.huikang.model.WorkDisease.class, workDisease.getId()));
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
	String hql = "from com.up72.huikang.model.WorkDisease where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(workDisease.getId())) {
		params.put(" id", workDisease.getId());
    }
    if($isNotEmpty(workDisease.getWorkId())) {
		params.put(" workId", workDisease.getWorkId());
    }
    if($isNotEmpty(workDisease.getDiseaseId())) {
		params.put(" diseaseId", workDisease.getDiseaseId());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("workDisease",workDisease);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/workDisease/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.WorkDisease",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.WorkDisease.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(workDisease.getId())){
		request.setAttribute("workDisease",$d.get(com.up72.huikang.model.WorkDisease.class,workDisease.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(workDisease.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + workDisease.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,workDisease.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> workDiseaseIds = $d.find("select id from com.up72.huikang.model.WorkDisease");
		for (Integer item : workDiseaseIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


