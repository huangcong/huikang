<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.up72.huikang.model.Dictionary"%>
<%@page import="com.up72.huikang.model.HealthRecord"%>
<%@page import="com.up72.huikang.model.HealthProject"%>
<%@include file="service.jsp" %>
<jsp:useBean id="healthRecord" class="com.up72.huikang.model.HealthRecord" scope="page" />
<jsp:setProperty name="healthRecord" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(healthRecord);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(healthRecord.getId())){
		request.setAttribute("healthRecord", $d.get(com.up72.huikang.model.HealthRecord.class, healthRecord.getId()));
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
	String hql = "from com.up72.huikang.model.HealthRecord where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(healthRecord.getId())) {
		params.put(" id", healthRecord.getId());
    }
    if($isNotEmpty(healthRecord.getPatientId())) {
		params.put(" patientId", healthRecord.getPatientId());
    }
    if($isNotEmpty(healthRecord.getWorkOrderId())) {
		params.put(" workOrderId", healthRecord.getWorkOrderId());
    }
    if($isNotEmpty(healthRecord.getBeginDate())) {
		params.put(" beginDate", healthRecord.getBeginDate());
    }
    if($isNotEmpty(healthRecord.getEndDate())) {
		params.put(" endDate", healthRecord.getEndDate());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("healthRecord",healthRecord);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	//request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/healthRecord/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.HealthRecord",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	//Long [] ids = $getParamLongs(request,"items");
	//if($isNotEmpty(ids)){
		//$d.delete(com.up72.huikang.model.HealthRecord.class, ids);
	//}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(healthRecord.getId())){
		request.setAttribute("healthRecord",$d.get(com.up72.huikang.model.HealthRecord.class,healthRecord.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(healthRecord.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + healthRecord.getId();
		//$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,healthRecord.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> healthRecordIds = $d.find("select id from com.up72.huikang.model.HealthRecord");
		for (Integer item : healthRecordIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			//$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD("healthRecord",request)){
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	/** 从数据字典中获取健康管理项目父id 开始*/
	List<Dictionary> idList = $d.find("from Dictionary where refCode = 'HK_HELTH_ITEM'");
	Long id = 0l; //数据字典父id
	for(int i =0;i<idList.size();i++){
		Dictionary dictionary = idList.get(i);
		id = dictionary.getId();
	}
	/** 从数据字典中获取健康管理项目父id 结束*/
	/** 根据数据字典父id获取子项 开始 */
	List<Dictionary> dictionaryList = $d.find("from Dictionary where dictionaryId ="+id);
	/** 根据数据字典父id获取子项 结束 */
	String hql = "from HealthRecord order by endDate desc";
	List<HealthRecord> healthRecordList = $d.findList(hql,10);
	request.setAttribute("healthRecordList",healthRecordList);
	request.setAttribute("dictionaryList",dictionaryList);
	request.setAttribute("nowTime",sdf.format(date));
	$forward("healthRecord.jsp",request,response);
}else if($isMD("save",request)){
	String [] items = ParamUtils.getParameters(request,"checkboxList",null);
	String startTime = ParamUtils.getParameter(request,"startDateStr1",null);
	String endTime = ParamUtils.getParameter(request,"endDateStr1",null);
	Integer id = ParamUtils.getIntParameter(request,"recordId",0);
	int resultCode = 1;
	HealthProject healthProject = new HealthProject();
	if(id==0){
		healthRecord.setPatientId("1");
		healthRecord.setBeginDate(startTime);
		healthRecord.setEndDate(endTime);
		healthRecord.setWorkOrderId("1");
		$d.save(healthRecord);
		id=healthRecord.getId();
	}else{
		HealthRecord record = (HealthRecord)$d.get(HealthRecord.class,id);
		record.setBeginDate(startTime);
		record.setEndDate(endTime);
		$d.update(record);
	}
	
	for(int i =0;i<items.length;i++){
		String place = ParamUtils.getParameter(request,""+items[i]+"_place",null);
		Long frequency = ParamUtils.getLongParameter(request,""+items[i]+"_frequency",0l);
		String dose = ParamUtils.getParameter(request,""+items[i]+"_dose",null);
		int confidence = ParamUtils.getIntParameter(request,""+items[i]+"_confidence",0);
		int sort = ParamUtils.getIntParameter(request,""+items[i]+"_sort",0);
		HealthProject project = new HealthProject();
		List<HealthProject> list = $d.find("from HealthProject where recordId="+id+" and name='"+items[i]+"'");
		if(list.size()>0){
			project = list.get(0);
			project.setPlace(place);
			project.setFrequency(frequency);
			project.setDose(dose);
			project.setConfidence(confidence);
			project.setSort(sort);
			try{
				$d.update(project);
				resultCode =1;
			}catch(Exception e){
				resultCode =0;
			}
		}else{
			healthProject.setName(items[i]);
			healthProject.setPlace(place);
			healthProject.setFrequency(frequency);
			healthProject.setDose(dose);
			healthProject.setConfidence(confidence);
			healthProject.setResult("1");
			healthProject.setSort(sort);
			healthProject.setRecordId(id);
			try{
				$d.save(healthProject);
				resultCode =1;
			}catch(Exception e){
				resultCode =0;
			}
		}
		
	}
	out.print(resultCode);
}else if($isMD("editHealthProject",request)){
	Integer id = ParamUtils.getIntParameter(request,"id",0);
	Integer result = ParamUtils.getIntParameter(request,"result",0);
	if(result == 0){
		result =1;
	}else if(result ==1){
		result =0;
	}
	int resultCode = $d.executeHsql("update HealthProject set result="+result+" where id="+id);
	out.print(resultCode);
}else if($isMD("healthRecordHtml",request)){
		Integer recordId = ParamUtils.getIntParameter(request,"id",0);
		/** 从数据字典中获取健康管理项目父id 开始*/
		List<Dictionary> idList = $d.find("from Dictionary where refCode = 'HK_HELTH_ITEM'");
		Long id = 0l; //数据字典父id
		for(int i =0;i<idList.size();i++){
			Dictionary dictionary = idList.get(i);
			id = dictionary.getId();
		}
		/** 从数据字典中获取健康管理项目父id 结束*/
		/** 根据数据字典父id获取子项 开始 */
		List<Dictionary> dictionaryList = $d.find("from Dictionary where dictionaryId ="+id);
		/** 根据数据字典父id获取子项 结束 */
		request.setAttribute("healthRecord", $d.get(HealthRecord.class, recordId));
		request.setAttribute("dictionaryList",dictionaryList);
		$forward("healthRecordHtml.jsp",request,response);
}
%>


