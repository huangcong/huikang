<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="doctorDisease" class="com.up72.huikang.model.DoctorDisease" scope="page" />
<jsp:setProperty name="doctorDisease" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(doctorDisease);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(doctorDisease.getId())){
		request.setAttribute("doctorDisease", $d.get(com.up72.huikang.model.DoctorDisease.class, doctorDisease.getId()));
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
	String hql = "from com.up72.huikang.model.DoctorDisease where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(doctorDisease.getId())) {
		params.put(" id", doctorDisease.getId());
    }
    if($isNotEmpty(doctorDisease.getDoctorId())) {
		params.put(" doctorId", doctorDisease.getDoctorId());
    }
    if($isNotEmpty(doctorDisease.getDiseaseId())) {
		params.put(" diseaseId", doctorDisease.getDiseaseId());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("doctorDisease",doctorDisease);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/doctorDisease/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.DoctorDisease",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.DoctorDisease.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(doctorDisease.getId())){
		request.setAttribute("doctorDisease",$d.get(com.up72.huikang.model.DoctorDisease.class,doctorDisease.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(doctorDisease.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + doctorDisease.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,doctorDisease.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> doctorDiseaseIds = $d.find("select id from com.up72.huikang.model.DoctorDisease");
		for (Integer item : doctorDiseaseIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


