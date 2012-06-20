<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="template" class="com.up72.huikang.model.Template" scope="page" />
<jsp:setProperty name="template" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(template);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(template.getId())){
		request.setAttribute("template", $d.get(com.up72.huikang.model.Template.class, template.getId()));
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
	String hql = "from com.up72.huikang.model.Template where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(template.getId())) {
		params.put(" id", template.getId());
    }
    if($isNotEmpty(template.getName())) {
		params.put(" name", template.getName());
    }
    if($isNotEmpty(template.getContent())) {
		params.put(" content", template.getContent());
    }
    if($isNotEmpty(template.getModels())) {
		params.put(" models", template.getModels());
    }
    if($isNotEmpty(template.getType())) {
		params.put(" type", template.getType());
    }
    if($isNotEmpty(template.getEnable())) {
		params.put(" enable", template.getEnable());
    }
    if($isNotEmpty(template.getCreateTime())) {
		params.put(" createTime", template.getCreateTime());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("template",template);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/template/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.Template",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.Template.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(template.getId())){
		request.setAttribute("template",$d.get(com.up72.huikang.model.Template.class,template.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(template.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + template.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,template.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> templateIds = $d.find("select id from com.up72.huikang.model.Template");
		for (Integer item : templateIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


