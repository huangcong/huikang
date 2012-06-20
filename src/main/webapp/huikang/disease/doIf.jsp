<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="disease" class="com.up72.huikang.model.Disease" scope="page" />
<jsp:setProperty name="disease" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(disease);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(disease.getId())){
		request.setAttribute("disease", $d.get(com.up72.huikang.model.Disease.class, disease.getId()));
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
	String hql = "from com.up72.huikang.model.Disease where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(disease.getId())) {
		params.put(" id", disease.getId());
    }
    if($isNotEmpty(disease.getCode())) {
		params.put(" code", disease.getCode());
    }
    if($isNotEmpty(disease.getParentId())) {
		params.put(" parentId", disease.getParentId());
    }
    if($isNotEmpty(disease.getRootId())) {
		params.put(" rootId", disease.getRootId());
    }
    if($isNotEmpty(disease.getPath())) {
		params.put(" path", disease.getPath());
    }
    if($isNotEmpty(disease.getName())) {
		params.put(" name", disease.getName());
    }
    if($isNotEmpty(disease.getValidable())) {
		params.put(" validable", disease.getValidable());
    }
    if($isNotEmpty(disease.getGbName())) {
		params.put(" gbName", disease.getGbName());
    }
    if($isNotEmpty(disease.getType())) {
		params.put(" type", disease.getType());
    }
    if($isNotEmpty(disease.getDiagnoseRule())) {
		params.put(" diagnoseRule", disease.getDiagnoseRule());
    }
    if($isNotEmpty(disease.getUrgentRule())) {
		params.put(" urgentRule", disease.getUrgentRule());
    }
    if($isNotEmpty(disease.getRiskRule())) {
		params.put(" riskRule", disease.getRiskRule());
    }
    if($isNotEmpty(disease.getNormalRule())) {
		params.put(" normalRule", disease.getNormalRule());
    }
    if($isNotEmpty(disease.getUrl())) {
		params.put(" url", disease.getUrl());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("disease",disease);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/disease/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.Disease",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.Disease.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(disease.getId())){
		request.setAttribute("disease",$d.get(com.up72.huikang.model.Disease.class,disease.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(disease.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + disease.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,disease.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> diseaseIds = $d.find("select id from com.up72.huikang.model.Disease");
		for (Integer item : diseaseIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


