<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="cmsResource" class="com.up72.huikang.model.CmsResource" scope="page" />
<jsp:setProperty name="cmsResource" property="*" />
<%
if($isMD($MD_E,request)){
	$d.saveOrUpdate(cmsResource);
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_F,request)){
	if($isNotEmpty(cmsResource.getId())){
		request.setAttribute("cmsResource", $d.get(com.up72.huikang.model.CmsResource.class, cmsResource.getId()));
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
	String hql = "from com.up72.huikang.model.CmsResource where 1 = 1";
	HashMap<String ,Object> params = new HashMap<String, Object>();
    if($isNotEmpty(cmsResource.getId())) {
		params.put(" id", cmsResource.getId());
    }
    if($isNotEmpty(cmsResource.getCateogyrId())) {
		params.put(" cateogyrId", cmsResource.getCateogyrId());
    }
    if($isNotEmpty(cmsResource.getTitle())) {
		params.put(" title", cmsResource.getTitle());
    }
    if($isNotEmpty(cmsResource.getSubTitle())) {
		params.put(" subTitle", cmsResource.getSubTitle());
    }
    if($isNotEmpty(cmsResource.getKeyWord())) {
		params.put(" keyWord", cmsResource.getKeyWord());
    }
    if($isNotEmpty(cmsResource.getAuthor())) {
		params.put(" author", cmsResource.getAuthor());
    }
    if($isNotEmpty(cmsResource.getSource())) {
		params.put(" source", cmsResource.getSource());
    }
    if($isNotEmpty(cmsResource.getContent())) {
		params.put(" content", cmsResource.getContent());
    }
    if($isNotEmpty(cmsResource.getImgNum())) {
		params.put(" imgNum", cmsResource.getImgNum());
    }
    if($isNotEmpty(cmsResource.getViewNum())) {
		params.put(" viewNum", cmsResource.getViewNum());
    }
    if($isNotEmpty(cmsResource.getFilePath())) {
		params.put(" filePath", cmsResource.getFilePath());
    }
    if($isNotEmpty(cmsResource.getImgPath())) {
		params.put(" imgPath", cmsResource.getImgPath());
    }
    if($isNotEmpty(cmsResource.getAddTime())) {
		params.put(" addTime", cmsResource.getAddTime());
    }
    if($isNotEmpty(cmsResource.getUpdateTime())) {
		params.put(" updateTime", cmsResource.getUpdateTime());
    }
    if($isNotEmpty(cmsResource.getSort())) {
		params.put(" sort", cmsResource.getSort());
    }
    if($isNotEmpty(cmsResource.getCategoryPath())) {
		params.put(" categoryPath", cmsResource.getCategoryPath());
    }
	QueryResult queryResult = $d.findPage(hql,params,new Pagination(start,range)); 
	request.setAttribute("cmsResource",cmsResource);
	request.setAttribute("pagination",queryResult.getPagination());
	request.setAttribute("items",queryResult.getItems());
	request.setAttribute("searchColumn",searchColumn);
	request.setAttribute("searchColumnValue",searchColumnValue);
	request.setAttribute(CommonConstants.SHOW_COLUMN,$getJsonShowLable("/huikang/cmsResource/page",request, response));
	//查询
	//QueryResult queryResult = $d.findItemsByHql("from com.up72.huikang.model.CmsResource",null,new Pagination(start,range));
	
	$forward("page.jsp",request,response);
}else if($isMD($MD_D,request)){
	Long [] ids = $getParamLongs(request,"items");
	if($isNotEmpty(ids)){
		$d.delete(com.up72.huikang.model.CmsResource.class, ids);
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}else if($isMD($MD_V,request)){
	if($isNotEmpty(cmsResource.getId())){
		request.setAttribute("cmsResource",$d.get(com.up72.huikang.model.CmsResource.class,cmsResource.getId()));
	}
	$forward("view.jsp",request,response);
}else if($isMDJson(request)){
	$forward("doJson.jsp",request,response);
}else if($isMD($MD_CF,request)){
	if($isNotEmpty(cmsResource.getId())){
		String url = request.getRequestURL() + "?method=view&id=" + cmsResource.getId();
		$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,cmsResource.getId() + ".html",$crawHtml(url));
	}else{
		List<Integer> cmsResourceIds = $d.find("select id from com.up72.huikang.model.CmsResource");
		for (Integer item : cmsResourceIds) {
			String url = request.getRequestURL() + "?method=view&id=" + item;
			$createFile($FILEPATH + $getDateTime("yyyy-MM-dd") +"/" ,item + ".html",$crawHtml(url));
		}
	}
	$redirect("do.jsp?method=" + $MD_P,response);
}
%>


