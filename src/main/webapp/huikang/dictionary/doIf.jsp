<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="service.jsp"%>
<jsp:useBean id="dictionary" class="com.up72.huikang.model.Dictionary"
	scope="page" />
<jsp:setProperty name="dictionary" property="*" />
<%
	if ($isMD($MD_E, request)) {
		if(dictionary.getDictionaryId() == null){
			dictionary.setDictionaryId(0L);
			dictionary.setPath("");
		}else{
			Dictionary parent = (Dictionary)$d.get(Dictionary.class, dictionary.getDictionaryId());
			dictionary.setPath(parent.getPath() + ",[" + parent.getId() + "]");
		}
		$d.saveOrUpdate(dictionary);
		$redirect("do.jsp?method=" + $MD_P, response);
	} else if ($isMD($MD_F, request)) {
		if ($isNotEmpty(dictionary.getId())) {
			request.setAttribute("dictionary", $d.get(
					com.up72.huikang.model.Dictionary.class, dictionary
							.getId()));
		}
		if ($isNotEmpty(dictionary.getDictionaryId())) {
			request.setAttribute("parent", $d.get(
					com.up72.huikang.model.Dictionary.class, dictionary
							.getDictionaryId()));
			request.setAttribute("dictionaryId", dictionary.getDictionaryId());
			request.setAttribute("dictionary", dictionary);
		}
		$forward("form.jsp", request, response);
	}  else if ($isMD($MD_P, request)) {
		$redirect("page.jsp", response);
	}  else if ($isMD($MD_D, request)) {
		Long id = Long.parseLong($getParam(request, "id", "0"));
		String params = "'%[" + id + "]%'";
		$d.executeHsql("delete from Dictionary where id = " + id + " or path like " + params);
		$redirect("do.jsp?method=" + $MD_P, response);
	} else if ($isMD($MD_V, request)) {
		request.setAttribute("dictionary", $d.get(
				com.up72.huikang.model.Dictionary.class, dictionary
						.getId()));
		$forward("view.jsp", request, response);
	}
%>


