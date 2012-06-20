<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="mailReceiver" class="com.up72.huikang.model.MailReceiver" scope="page" />
<jsp:setProperty name="mailReceiver" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(mailReceiver);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(mailReceiver.getId())){
		request.setAttribute("mailReceiver", $d.get(com.up72.huikang.model.MailReceiver.class, mailReceiver.getId()));
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
	String hql = "from com.up72.huikang.model.MailReceiver where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(mailReceiver.getId())) {
		params.put(" id", mailReceiver.getId());
    }
    if($isNotEmpty(mailReceiver.getMailId())) {
		params.put(" mailId", mailReceiver.getMailId());
    }
    if($isNotEmpty(mailReceiver.getReceiveId())) {
		params.put(" receiveId", mailReceiver.getReceiveId());
    }
    if($isNotEmpty(mailReceiver.getWorkOrderId())) {
		params.put(" workOrderId", mailReceiver.getWorkOrderId());
    }
    if($isNotEmpty(mailReceiver.getReceiveName())) {
		params.put(" receiveName", mailReceiver.getReceiveName());
    }
    if($isNotEmpty(mailReceiver.getReceiveMail())) {
		params.put(" receiveMail", mailReceiver.getReceiveMail());
    }
    if($isNotEmpty(mailReceiver.getReceiveType())) {
		params.put(" receiveType", mailReceiver.getReceiveType());
    }
    if($isNotEmpty(mailReceiver.getCreateTime())) {
		params.put(" createTime", mailReceiver.getCreateTime());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("mailReceiver",mailReceiver);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	//request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/mailReceiver/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.MailReceiver",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	//Long [] ids = $getParamLongs(request,"items");
	//if($isNotEmpty(ids)){
		//$d.delete(com.up72.huikang.model.MailReceiver.class, ids);
	//}
	//$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(mailReceiver.getId())){
		request.setAttribute("mailReceiver",$d.get(com.up72.huikang.model.MailReceiver.class,mailReceiver.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	//if($isNotEmpty(mailReceiver.getId())){
		//String url = request.getRequestURL() + "?method=view&id=" + mailReceiver.getId();
		//$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,mailReceiver.getId() + ".html",$crawHtml(url));
	//}else{
		//List<Integer> mailReceiverIds = $d.find("select id from com.up72.huikang.model.MailReceiver");
		//for (Integer item : mailReceiverIds) {
			//String url = request.getRequestURL() + "?method=view&id=" + item;
			//$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		//}
	//}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD("medicalRecords",request)){
	$forward("medicalRecords.jsp",request,response);
}
%>


