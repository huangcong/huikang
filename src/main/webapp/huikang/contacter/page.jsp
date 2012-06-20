<%@page import="com.up72.huikang.model.*" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<up72:override name="head">
<script type="text/javascript" src="<c:url value="/scripts/extend.div.1.0.js"/>"></script>
<script type="text/javascript" src="${ctx}/scripts/columnshow.js"></script>
<script type="text/javascript" src="${ctx}/scripts/rest.js"></script>

<link href="${ctx}/scripts/grid/css/flexigrid.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="${ctx}/scripts/grid/flexigrid-source.js"></script>
</up72:override>

<up72:override name="content">
<!--当前位置-->
  <div class="head_content">
   <div class="navBar" style="display: none;"> » <a class="" href="${ctx}/admin/huikang/contacter/"><%=Contacter.TABLE_ALIAS%>管理</a> </div>
  </div>
<!--end当前位置--> 

<!--搜索-->
	<div class="up72_search skin_search">
	<form id="huikang_contacter_search_form" name="huikang_contacter_search_form" method="get">
		<div class="up72_search_con">
				<div class="input_search_text"><%=Contacter.ALIAS_PATIENT_ID%>：<input type="text" id="patientId" name="patientId" class="input_text" value="${query.patientId}"></div>
				<div class="input_search_text"><%=Contacter.ALIAS_NAME%>：<input type="text" id="name" name="name" class="input_text" value="${query.name}"></div>
				<div class="input_search_text"><%=Contacter.ALIAS_SEX%>：<input type="text" id="sex" name="sex" class="input_text" value="${query.sex}"></div>
				<div class="input_search_text"><%=Contacter.ALIAS_EMAIL%>：<input type="text" id="email" name="email" class="input_text" value="${query.email}"></div>
				<div class="input_search_text"><%=Contacter.ALIAS_PHONE%>：<input type="text" id="phone" name="phone" class="input_text" value="${query.phone}"></div>
				<div class="input_search_text"><%=Contacter.ALIAS_MOBILE%>：<input type="text" id="mobile" name="mobile" class="input_text" value="${query.mobile}"></div>
				<div class="input_search_text"><%=Contacter.ALIAS_COMPANY%>：<input type="text" id="company" name="company" class="input_text" value="${query.company}"></div>
				<div class="input_search_text"><%=Contacter.ALIAS_MAIN_TYPE%>：<input type="text" id="mainType" name="mainType" class="input_text" value="${query.mainType}"></div>
			<div class="input_search_button"><div class="input_button"><button name="btnU" type="submit" onclick="$(this).parents('form').submit();" class="button" value="搜索"><span>搜索</span></button></div></div>
		</div>
	</form>
	</div>
<!--end搜索-->

<form id="huikang_contacter_page_form" name="huikang_contacter_page_form" action="${CTX}/huikang/contacter/do.jsp?method=${MD_P}"   method="post">

<table id="huikang_contacter_table">
		<thead>
			<tr>
				<th showColumn="checkbox" width="25"><input type="checkbox" id="checkall" onclick="setAllCheckboxState('items',this.checked);" /></th>
				<th showColumn="index" width="20">序号</th>
				<th showColumn="option" width="30"><label>操作</label></th>
				<th sortColumn="patient_id" showColumn="patientId" width="50"><%=Contacter.ALIAS_PATIENT_ID%></th>
				<th sortColumn="name" showColumn="name" width="50"><%=Contacter.ALIAS_NAME%></th>
				<th sortColumn="sex" showColumn="sex" width="50"><%=Contacter.ALIAS_SEX%></th>
				<th sortColumn="email" showColumn="email" width="50"><%=Contacter.ALIAS_EMAIL%></th>
				<th sortColumn="phone" showColumn="phone" width="50"><%=Contacter.ALIAS_PHONE%></th>
				<th sortColumn="mobile" showColumn="mobile" width="50"><%=Contacter.ALIAS_MOBILE%></th>
				<th sortColumn="company" showColumn="company" width="50"><%=Contacter.ALIAS_COMPANY%></th>
				<th sortColumn="main_type" showColumn="mainType" width="50"><%=Contacter.ALIAS_MAIN_TYPE%></th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${items}" var="item" varStatus="status">
			<tr>
				<td showColumn="checkbox"><input type="checkbox" id="items" name="items" value="${item.id}" class="sel" tags="null"></td>
				<td showColumn="index">${page.thisPageFirstElementNumber + status.index}</td>
				<td showColumn="option"><a href="javascript:;"  onclick="show('${ctx}/huikang/contacter/${item.id}/edit','<%=Contacter.TABLE_ALIAS%>',600)" class="sysiconBtnNoIcon">编辑</a>&nbsp;</td>
				<td showColumn="patientId">
<c:out value='${item.patientId}'/>&nbsp;				</td>
				<td showColumn="name">
<c:out value='${item.name}'/>&nbsp;				</td>
				<td showColumn="sex">
<c:out value='${item.sex}'/>&nbsp;				</td>
				<td showColumn="email">
<c:out value='${item.email}'/>&nbsp;				</td>
				<td showColumn="phone">
<c:out value='${item.phone}'/>&nbsp;				</td>
				<td showColumn="mobile">
<c:out value='${item.mobile}'/>&nbsp;				</td>
				<td showColumn="company">
<c:out value='${item.company}'/>&nbsp;				</td>
				<td showColumn="mainType">
<c:out value='${item.mainType}'/>&nbsp;				</td>
			</tr>
	</c:forEach>
		</tbody>
	</table>
	
<pg:pager
			items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}"
			isOffset="true"
			url="${CTX}/admin/huikang/contacter/do.jsp"
			export="currentPageNumber=pageNumber"
			scope="request">   
		  <pg:param name="range"/>
		  <pg:param name="maxIndexPages"/>
		  <pg:param name="method"/>
		  
		  <pg:param name="searchColumn"/>
		  <pg:param name="searchColumnValue"/>
		  
		   <pg:param name="patientId"/>
		   <pg:param name="name"/>
		   <pg:param name="sex"/>
		   <pg:param name="email"/>
		   <pg:param name="phone"/>
		   <pg:param name="mobile"/>
		   <pg:param name="company"/>
		   <pg:param name="mainType"/>
			<jsp:include page="/common/page/bar.jsp" flush="true"/>共有：<c:out value="${pagination.totalRecord}"/>条记录
		</pg:pager>
</form>

<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_contacter_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_contacter_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_contacter_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/contacter/do.jsp?method=form","<%=Contacter.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/contacter/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_contacter_page_form',form:'#huikang_contacter_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="base.jsp" %>