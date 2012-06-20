<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="scheduleInvite" class="com.up72.huikang.model.ScheduleInvite" scope="page" />
<jsp:setProperty name="scheduleInvite" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(scheduleInvite);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(scheduleInvite.getId())){
		request.setAttribute("scheduleInvite", $d.get(com.up72.huikang.model.ScheduleInvite.class, scheduleInvite.getId()));
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
	String hql = "from com.up72.huikang.model.ScheduleInvite where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(scheduleInvite.getId())) {
		params.put(" id", scheduleInvite.getId());
    }
    if($isNotEmpty(scheduleInvite.getScheduleId())) {
		params.put(" scheduleId", scheduleInvite.getScheduleId());
    }
    if($isNotEmpty(scheduleInvite.getInviteType())) {
		params.put(" inviteType", scheduleInvite.getInviteType());
    }
    if($isNotEmpty(scheduleInvite.getWorkOrderId())) {
		params.put(" workOrderId", scheduleInvite.getWorkOrderId());
    }
    if($isNotEmpty(scheduleInvite.getInviteId())) {
		params.put(" inviteId", scheduleInvite.getInviteId());
    }
    if($isNotEmpty(scheduleInvite.getInviteName())) {
		params.put(" inviteName", scheduleInvite.getInviteName());
    }
    if($isNotEmpty(scheduleInvite.getCreateTime())) {
		params.put(" createTime", scheduleInvite.getCreateTime());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("scheduleInvite",scheduleInvite);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/scheduleInvite/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.ScheduleInvite",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.ScheduleInvite.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(scheduleInvite.getId())){
		request.setAttribute("scheduleInvite",$d.get(com.up72.huikang.model.ScheduleInvite.class,scheduleInvite.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(scheduleInvite.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + scheduleInvite.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,scheduleInvite.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> scheduleInviteIds = $d.find("select id from com.up72.huikang.model.ScheduleInvite");
		for (Integer item : scheduleInviteIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


