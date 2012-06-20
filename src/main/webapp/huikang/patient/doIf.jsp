<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="patient" class="com.up72.huikang.model.Patient" scope="page" />
<jsp:setProperty name="patient" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(patient);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(patient.getId())){
		request.setAttribute("patient", $d.get(com.up72.huikang.model.Patient.class, patient.getId()));
	}
	$forward("form.jsp",request,response);
}else if($isMD($MD_P,request)){
	//分页
	int range = $getParam(request, "range", 30);//单页数据
	int start = $getParam(request, "pager.offset", 0);//数据开始值
	String searchColumn = $getParam(request, "searchColumn", "");
	String searchColumnValue = $getParam(request, "searchColumnValue", "");
	//分页
	//查询
	String hql = "from com.up72.huikang.model.Patient where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(patient.getId())) {
		params.put(" id", patient.getId());
    }
    if($isNotEmpty(patient.getCode())) {
		params.put(" code", patient.getCode());
    }
    if($isNotEmpty(patient.getName())) {
		params.put(" name", patient.getName());
    }
    if($isNotEmpty(patient.getBirthday())) {
		params.put(" birthday", patient.getBirthday());
    }
    if($isNotEmpty(patient.getSex())) {
		params.put(" sex", patient.getSex());
    }
    if($isNotEmpty(patient.getAddress())) {
		params.put(" address", patient.getAddress());
    }
    if($isNotEmpty(patient.getZipCode())) {
		params.put(" zipCode", patient.getZipCode());
    }
    if($isNotEmpty(patient.getDegree())) {
		params.put(" degree", patient.getDegree());
    }
    if($isNotEmpty(patient.getPhone())) {
		params.put(" phone", patient.getPhone());
    }
    if($isNotEmpty(patient.getMobile())) {
		params.put(" mobile", patient.getMobile());
    }
    if($isNotEmpty(patient.getEmail())) {
		params.put(" email", patient.getEmail());
    }
    if($isNotEmpty(patient.getMainType())) {
		params.put(" mainType", patient.getMainType());
    }
    if($isNotEmpty(patient.getNation())) {
		params.put(" nation", patient.getNation());
    }
    if($isNotEmpty(patient.getMarriage())) {
		params.put(" marriage", patient.getMarriage());
    }
    if($isNotEmpty(patient.getCompany())) {
		params.put(" company", patient.getCompany());
    }
    if($isNotEmpty(patient.getContacter1())) {
		params.put(" contacter1", patient.getContacter1());
    }
    if($isNotEmpty(patient.getContacter2())) {
		params.put(" contacter2", patient.getContacter2());
    }
    if($isNotEmpty(patient.getSource())) {
		params.put(" source", patient.getSource());
    }
    if($isNotEmpty(patient.getRemark())) {
		params.put(" remark", patient.getRemark());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("patient",patient);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	//request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/patient/page",request, response));
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getLongParams(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.Patient.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(patient.getId())){
		request.setAttribute("patient",$d.get(com.up72.huikang.model.Patient.class,patient.getId()));
	}
	$forward("view.jsp",request,response);
}
%>


