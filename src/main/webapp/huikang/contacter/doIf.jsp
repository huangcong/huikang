<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="contacter" class="com.up72.huikang.model.Contacter" scope="page" />
<jsp:setProperty name="contacter" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(contacter);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(contacter.getId())){
		request.setAttribute("contacter", $d.get(com.up72.huikang.model.Contacter.class, contacter.getId()));
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
	String hql = "from com.up72.huikang.model.Contacter where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(contacter.getId())) {
		params.put(" id", contacter.getId());
    }
    if($isNotEmpty(contacter.getPatientId())) {
		params.put(" patientId", contacter.getPatientId());
    }
    if($isNotEmpty(contacter.getName())) {
		params.put(" name", contacter.getName());
    }
    if($isNotEmpty(contacter.getSex())) {
		params.put(" sex", contacter.getSex());
    }
    if($isNotEmpty(contacter.getEmail())) {
		params.put(" email", contacter.getEmail());
    }
    if($isNotEmpty(contacter.getPhone())) {
		params.put(" phone", contacter.getPhone());
    }
    if($isNotEmpty(contacter.getMobile())) {
		params.put(" mobile", contacter.getMobile());
    }
    if($isNotEmpty(contacter.getCompany())) {
		params.put(" company", contacter.getCompany());
    }
    if($isNotEmpty(contacter.getMainType())) {
		params.put(" mainType", contacter.getMainType());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("contacter",contacter);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/contacter/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.Contacter",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.Contacter.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(contacter.getId())){
		request.setAttribute("contacter",$d.get(com.up72.huikang.model.Contacter.class,contacter.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(contacter.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + contacter.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,contacter.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> contacterIds = $d.find("select id from com.up72.huikang.model.Contacter");
		for (Integer item : contacterIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


