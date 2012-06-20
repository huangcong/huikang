<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="schedule" class="com.up72.huikang.model.Schedule" scope="page" />
<jsp:setProperty name="schedule" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(schedule);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(schedule.getId())){
		request.setAttribute("schedule", $d.get(com.up72.huikang.model.Schedule.class, schedule.getId()));
	}
	$forward("form.jsp",request,response);
}else if($isMD($MD_P,request)){
	//分页
	int range = $getParam(request, "range", 30);//单页数据
	int start = $getParam(request, "pager.offset", 0);//数据开始值
	String searchColumn = $getParam(request, "searchColumn", "");
	String searchColumnValue = $getParam(request, "searchColumnValue", "");
	//查询
	String hql = "from com.up72.huikang.model.Schedule where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(schedule.getId())) {
		params.put(" id", schedule.getId());
    }
    if($isNotEmpty(schedule.getDoctorId())) {
		params.put(" doctorId", schedule.getDoctorId());
    }
    if($isNotEmpty(schedule.getTitle())) {
		params.put(" title", schedule.getTitle());
    }
    if($isNotEmpty(schedule.getContent())) {
		params.put(" content", schedule.getContent());
    }
    if($isNotEmpty(schedule.getAddress())) {
		params.put(" address", schedule.getAddress());
    }
    if($isNotEmpty(schedule.getType())) {
		params.put(" type", schedule.getType());
    }
    if($isNotEmpty(schedule.getLecturerIds())) {
		params.put(" lecturerIds", schedule.getLecturerIds());
    }
    if($isNotEmpty(schedule.getLecturerNames())) {
		params.put(" lecturerNames", schedule.getLecturerNames());
    }
    if($isNotEmpty(schedule.getMaxNum())) {
		params.put(" maxNum", schedule.getMaxNum());
    }
    if($isNotEmpty(schedule.getMinNum())) {
		params.put(" minNum", schedule.getMinNum());
    }
    if($isNotEmpty(schedule.getInviteNum())) {
		params.put(" inviteNum", schedule.getInviteNum());
    }
    if($isNotEmpty(schedule.getWorkOrderId())) {
		params.put(" workOrderId", schedule.getWorkOrderId());
    }
    if($isNotEmpty(schedule.getScheduleDate())) {
		params.put(" scheduleDate", schedule.getScheduleDate());
    }
    if($isNotEmpty(schedule.getCreateTime())) {
		params.put(" createTime", schedule.getCreateTime());
    }
    if($isNotEmpty(schedule.getStartTime())) {
		params.put(" startTime", schedule.getStartTime());
    }
    if($isNotEmpty(schedule.getEndTime())) {
		params.put(" endTime", schedule.getEndTime());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("schedule",schedule);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getLongParams(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.Schedule.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(schedule.getId())){
		request.setAttribute("schedule",$d.get(com.up72.huikang.model.Schedule.class,schedule.getId()));
	}
	$forward("view.jsp",request,response);
}
%>


