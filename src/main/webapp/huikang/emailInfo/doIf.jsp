<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="emailInfo" class="com.up72.huikang.model.EmailInfo" scope="page" />
<jsp:setProperty name="emailInfo" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(emailInfo);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(emailInfo.getId())){
		request.setAttribute("emailInfo", $d.get(com.up72.huikang.model.EmailInfo.class, emailInfo.getId()));
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
	String hql = "from com.up72.huikang.model.EmailInfo where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(emailInfo.getId())) {
		params.put(" id", emailInfo.getId());
    }
    if($isNotEmpty(emailInfo.getDoctorId())) {
		params.put(" doctorId", emailInfo.getDoctorId());
    }
    if($isNotEmpty(emailInfo.getEmail())) {
		params.put(" email", emailInfo.getEmail());
    }
    if($isNotEmpty(emailInfo.getServer())) {
		params.put(" server", emailInfo.getServer());
    }
    if($isNotEmpty(emailInfo.getPassword())) {
		params.put(" password", emailInfo.getPassword());
    }
    if($isNotEmpty(emailInfo.getAuth())) {
		params.put(" auth", emailInfo.getAuth());
    }
    if($isNotEmpty(emailInfo.getDeleted())) {
		params.put(" deleted", emailInfo.getDeleted());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("emailInfo",emailInfo);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/emailInfo/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.EmailInfo",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.EmailInfo.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(emailInfo.getId())){
		request.setAttribute("emailInfo",$d.get(com.up72.huikang.model.EmailInfo.class,emailInfo.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(emailInfo.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + emailInfo.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,emailInfo.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> emailInfoIds = $d.find("select id from com.up72.huikang.model.EmailInfo");
		for (Integer item : emailInfoIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


