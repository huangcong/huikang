<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="patientDisease" class="com.up72.huikang.model.PatientDisease" scope="page" />
<jsp:setProperty name="patientDisease" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(patientDisease);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(patientDisease.getId())){
		request.setAttribute("patientDisease", $d.get(com.up72.huikang.model.PatientDisease.class, patientDisease.getId()));
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
	String hql = "from com.up72.huikang.model.PatientDisease where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(patientDisease.getId())) {
		params.put(" id", patientDisease.getId());
    }
    if($isNotEmpty(patientDisease.getPatientId())) {
		params.put(" patientId", patientDisease.getPatientId());
    }
    if($isNotEmpty(patientDisease.getDiseaseId())) {
		params.put(" diseaseId", patientDisease.getDiseaseId());
    }
    if($isNotEmpty(patientDisease.getDiagnoseTime())) {
		params.put(" diagnoseTime", patientDisease.getDiagnoseTime());
    }
    if($isNotEmpty(patientDisease.getDiagnoseAddress())) {
		params.put(" diagnoseAddress", patientDisease.getDiagnoseAddress());
    }
    if($isNotEmpty(patientDisease.getFamilyHistory())) {
		params.put(" familyHistory", patientDisease.getFamilyHistory());
    }
    if($isNotEmpty(patientDisease.getYears())) {
		params.put(" years", patientDisease.getYears());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("patientDisease",patientDisease);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/patientDisease/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.PatientDisease",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.PatientDisease.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(patientDisease.getId())){
		request.setAttribute("patientDisease",$d.get(com.up72.huikang.model.PatientDisease.class,patientDisease.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(patientDisease.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + patientDisease.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,patientDisease.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> patientDiseaseIds = $d.find("select id from com.up72.huikang.model.PatientDisease");
		for (Integer item : patientDiseaseIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


