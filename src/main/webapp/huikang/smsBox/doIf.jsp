<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="smsBox" class="com.up72.huikang.model.SmsBox" scope="page" />
<jsp:setProperty name="smsBox" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(smsBox);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(smsBox.getId())){
		request.setAttribute("smsBox", $d.get(com.up72.huikang.model.SmsBox.class, smsBox.getId()));
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
	String hql = "from com.up72.huikang.model.SmsBox where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(smsBox.getId())) {
		params.put(" id", smsBox.getId());
    }
    if($isNotEmpty(smsBox.getSendId())) {
		params.put(" sendId", smsBox.getSendId());
    }
    if($isNotEmpty(smsBox.getSendNum())) {
		params.put(" sendNum", smsBox.getSendNum());
    }
    if($isNotEmpty(smsBox.getTemplateId())) {
		params.put(" templateId", smsBox.getTemplateId());
    }
    if($isNotEmpty(smsBox.getTemplateModel())) {
		params.put(" templateModel", smsBox.getTemplateModel());
    }
    if($isNotEmpty(smsBox.getContent())) {
		params.put(" content", smsBox.getContent());
    }
    if($isNotEmpty(smsBox.getType())) {
		params.put(" type", smsBox.getType());
    }
    if($isNotEmpty(smsBox.getDeleted())) {
		params.put(" deleted", smsBox.getDeleted());
    }
    if($isNotEmpty(smsBox.getSendTime())) {
		params.put(" sendTime", smsBox.getSendTime());
    }
    if($isNotEmpty(smsBox.getResult())) {
		params.put(" result", smsBox.getResult());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("smsBox",smsBox);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/smsBox/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.SmsBox",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.SmsBox.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(smsBox.getId())){
		request.setAttribute("smsBox",$d.get(com.up72.huikang.model.SmsBox.class,smsBox.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(smsBox.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + smsBox.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,smsBox.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> smsBoxIds = $d.find("select id from com.up72.huikang.model.SmsBox");
		for (Integer item : smsBoxIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


