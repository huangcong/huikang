<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.up72.huikang.CommonConstants"%>
<%@include file="service.jsp" %>
<jsp:useBean id="workOrder" class="com.up72.huikang.model.WorkOrder" scope="page" />
<jsp:setProperty name="workOrder" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(workOrder);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(workOrder.getId())){
		request.setAttribute("workOrder", $d.get(com.up72.huikang.model.WorkOrder.class, workOrder.getId()));
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
	String hql = "from com.up72.huikang.model.WorkOrder where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(workOrder.getId())) {
		params.put(" id", workOrder.getId());
    }
    if($isNotEmpty(workOrder.getPatientId())) {
		params.put(" patientId", workOrder.getPatientId());
    }
    if($isNotEmpty(workOrder.getLevel())) {
		params.put(" level", workOrder.getLevel());
    }
    if($isNotEmpty(workOrder.getStatus())) {
		params.put(" status", workOrder.getStatus());
    }
    if($isNotEmpty(workOrder.getSource())) {
		params.put(" source", workOrder.getSource());
    }
    if($isNotEmpty(workOrder.getDoctorId())) {
		params.put(" doctorId", workOrder.getDoctorId());
    }
    if($isNotEmpty(workOrder.getDiseases())) {
		params.put(" diseases", workOrder.getDiseases());
    }
    if($isNotEmpty(workOrder.getCreateTime())) {
		params.put(" createTime", workOrder.getCreateTime());
    }
    if($isNotEmpty(workOrder.getUpdateTime())) {
		params.put(" updateTime", workOrder.getUpdateTime());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("workOrder",workOrder);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	//request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/workOrder/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.WorkOrder",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getLongParams(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.WorkOrder.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(workOrder.getId())){
		request.setAttribute("workOrder",$d.get(com.up72.huikang.model.WorkOrder.class,workOrder.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	//if($isNotEmpty(workOrder.getId())){
		//String url = request.getRequestURL() + "?method=view&id=" + workOrder.getId();
		//$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,workOrder.getId() + ".html",$crawHtml(url));
	//}else{
		//List<Integer> workOrderIds = $d.find("select id from com.up72.huikang.model.WorkOrder");
		//for (Integer item : workOrderIds) {
			//String url = request.getRequestURL() + "?method=view&id=" + item;
			//$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		//}
	//}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD("workList",request)){
	Long type = ParamUtils.getLongParameter(request,"type",0l);
	String url = "/huikang/workList.jsp";
	//分页
	int range = $getParam(request, "range", 10);//单页数据
	int start = $getParam(request, "pager.offset", 0);//数据开始值
	//String searchColumn = $getParam(request, "searchColumn", "");
	//String searchColumnValue = $getParam(request, "searchColumnValue", "");
	//int maxIndexPages = $getParam(request, "maxIndexPages", 5);//分页bar索引数可修改，默认为5
	//Pagination pagination = new Pagination(start,range,maxIndexPages);
	//Pagination pagination = new Pagination(start,range); 
	//分页
	String hql = "from com.up72.huikang.model.WorkOrder where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
	if(type ==1){
		params.put("status in (0,1)",null);
		url = "/huikang/workList.jsp";
		request.setAttribute("type",type);
	}else if(type ==2){
		params.put("source",1l);
		url = "/huikang/workList_schedule.jsp";
		request.setAttribute("type",type);
	}else if(type ==3){
		params.put("status",2l);
		url = "/huikang/workList_pass.jsp";
		request.setAttribute("type",type);
	}
	TreeMap<String, String> orderMap = new TreeMap<String, String>();
	orderMap.put("level desc", null);
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range),orderMap);
	request.setAttribute("workOrder",workOrder);
	request.setAttribute("pagination", queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems()); 
	$forward(url,request,response);
}
%>


