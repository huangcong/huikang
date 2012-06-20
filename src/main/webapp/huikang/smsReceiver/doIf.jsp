<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="smsReceiver" class="com.up72.huikang.model.SmsReceiver" scope="page" />
<jsp:setProperty name="smsReceiver" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(smsReceiver);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(smsReceiver.getId())){
		request.setAttribute("smsReceiver", $d.get(com.up72.huikang.model.SmsReceiver.class, smsReceiver.getId()));
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
	String hql = "from com.up72.huikang.model.SmsReceiver where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(smsReceiver.getId())) {
		params.put(" id", smsReceiver.getId());
    }
    if($isNotEmpty(smsReceiver.getSmsId())) {
		params.put(" smsId", smsReceiver.getSmsId());
    }
    if($isNotEmpty(smsReceiver.getReceiveId())) {
		params.put(" receiveId", smsReceiver.getReceiveId());
    }
    if($isNotEmpty(smsReceiver.getWorkOrderId())) {
		params.put(" workOrderId", smsReceiver.getWorkOrderId());
    }
    if($isNotEmpty(smsReceiver.getReceiveName())) {
		params.put(" receiveName", smsReceiver.getReceiveName());
    }
    if($isNotEmpty(smsReceiver.getReceiveSms())) {
		params.put(" receiveSms", smsReceiver.getReceiveSms());
    }
    if($isNotEmpty(smsReceiver.getCreateTime())) {
		params.put(" createTime", smsReceiver.getCreateTime());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("smsReceiver",smsReceiver);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/smsReceiver/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.SmsReceiver",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.SmsReceiver.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(smsReceiver.getId())){
		request.setAttribute("smsReceiver",$d.get(com.up72.huikang.model.SmsReceiver.class,smsReceiver.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(smsReceiver.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + smsReceiver.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,smsReceiver.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> smsReceiverIds = $d.find("select id from com.up72.huikang.model.SmsReceiver");
		for (Integer item : smsReceiverIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


