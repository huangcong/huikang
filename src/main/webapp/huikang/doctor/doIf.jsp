<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="doctor" class="com.up72.huikang.model.Doctor" scope="page" />
<jsp:setProperty name="doctor" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(doctor);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(doctor.getId())){
		request.setAttribute("doctor", $d.get(com.up72.huikang.model.Doctor.class, doctor.getId()));
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
	String hql = "from com.up72.huikang.model.Doctor where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(doctor.getId())) {
		params.put(" id", doctor.getId());
    }
    if($isNotEmpty(doctor.getUserName())) {
		params.put(" userName", doctor.getUserName());
    }
    if($isNotEmpty(doctor.getPassword())) {
		params.put(" password", doctor.getPassword());
    }
    if($isNotEmpty(doctor.getRealName())) {
		params.put(" realName", doctor.getRealName());
    }
    if($isNotEmpty(doctor.getBirthday())) {
		params.put(" birthday", doctor.getBirthday());
    }
    if($isNotEmpty(doctor.getSex())) {
		params.put(" sex", doctor.getSex());
    }
    if($isNotEmpty(doctor.getAddress())) {
		params.put(" address", doctor.getAddress());
    }
    if($isNotEmpty(doctor.getPhone())) {
		params.put(" phone", doctor.getPhone());
    }
    if($isNotEmpty(doctor.getMobile())) {
		params.put(" mobile", doctor.getMobile());
    }
    if($isNotEmpty(doctor.getEmail())) {
		params.put(" email", doctor.getEmail());
    }
    if($isNotEmpty(doctor.getMainType())) {
		params.put(" mainType", doctor.getMainType());
    }
    if($isNotEmpty(doctor.getNation())) {
		params.put(" nation", doctor.getNation());
    }
    if($isNotEmpty(doctor.getMarriage())) {
		params.put(" marriage", doctor.getMarriage());
    }
    if($isNotEmpty(doctor.getCompany())) {
		params.put(" company", doctor.getCompany());
    }
    if($isNotEmpty(doctor.getWorkGroupId())) {
		params.put(" workGroupId", doctor.getWorkGroupId());
    }
    if($isNotEmpty(doctor.getSite())) {
		params.put(" site", doctor.getSite());
    }
    if($isNotEmpty(doctor.getEmailValid())) {
		params.put(" emailValid", doctor.getEmailValid());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("doctor",doctor);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/doctor/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.Doctor",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.Doctor.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(doctor.getId())){
		request.setAttribute("doctor",$d.get(com.up72.huikang.model.Doctor.class,doctor.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(doctor.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + doctor.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,doctor.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> doctorIds = $d.find("select id from com.up72.huikang.model.Doctor");
		for (Integer item : doctorIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


