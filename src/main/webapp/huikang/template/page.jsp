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
   <div class="navBar" style="display: none;"> » <a class="" href="${ctx}/admin/huikang/template/"><%=Template.TABLE_ALIAS%>管理</a> </div>
  </div>
<!--end当前位置--> 

<!--搜索-->
	<div class="up72_search skin_search">
	<form id="huikang_template_search_form" name="huikang_template_search_form" method="get">
		<div class="up72_search_con">
				<div class="input_search_text"><%=Template.ALIAS_NAME%>：<input type="text" id="name" name="name" class="input_text" value="${query.name}"></div>
				<div class="input_search_text"><%=Template.ALIAS_CONTENT%>：<input type="text" id="content" name="content" class="input_text" value="${query.content}"></div>
				<div class="input_search_text"><%=Template.ALIAS_MODELS%>：<input type="text" id="models" name="models" class="input_text" value="${query.models}"></div>
				<div class="input_search_text"><%=Template.ALIAS_TYPE%>：<input type="text" id="type" name="type" class="input_text" value="${query.type}"></div>
				<div class="input_search_text"><%=Template.ALIAS_ENABLE%>：<input type="text" id="enable" name="enable" class="input_text" value="${query.enable}"></div>
				<div class="input_search_text"><%=Template.ALIAS_CREATE_TIME%>：<input type="text" id="createTime" name="createTime" class="input_text" value="${query.createTime}"></div>
			<div class="input_search_button"><div class="input_button"><button name="btnU" type="submit" onclick="$(this).parents('form').submit();" class="button" value="搜索"><span>搜索</span></button></div></div>
		</div>
	</form>
	</div>
<!--end搜索-->

<form id="huikang_template_page_form" name="huikang_template_page_form" action="${CTX}/huikang/template/do.jsp?method=${MD_P}"   method="post">

<table id="huikang_template_table">
		<thead>
			<tr>
				<th showColumn="checkbox" width="25"><input type="checkbox" id="checkall" onclick="setAllCheckboxState('items',this.checked);" /></th>
				<th showColumn="index" width="20">序号</th>
				<th showColumn="option" width="30"><label>操作</label></th>
				<th sortColumn="name" showColumn="name" width="50"><%=Template.ALIAS_NAME%></th>
				<th sortColumn="content" showColumn="content" width="50"><%=Template.ALIAS_CONTENT%></th>
				<th sortColumn="models" showColumn="models" width="50"><%=Template.ALIAS_MODELS%></th>
				<th sortColumn="type" showColumn="type" width="50"><%=Template.ALIAS_TYPE%></th>
				<th sortColumn="enable" showColumn="enable" width="50"><%=Template.ALIAS_ENABLE%></th>
				<th sortColumn="create_time" showColumn="createTime" width="50"><%=Template.ALIAS_CREATE_TIME%></th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${items}" var="item" varStatus="status">
			<tr>
				<td showColumn="checkbox"><input type="checkbox" id="items" name="items" value="${item.id}" class="sel" tags="null"></td>
				<td showColumn="index">${page.thisPageFirstElementNumber + status.index}</td>
				<td showColumn="option"><a href="javascript:;"  onclick="show('${ctx}/huikang/template/${item.id}/edit','<%=Template.TABLE_ALIAS%>',600)" class="sysiconBtnNoIcon">编辑</a>&nbsp;</td>
				<td showColumn="name">
<c:out value='${item.name}'/>&nbsp;				</td>
				<td showColumn="content">
<c:out value='${item.content}'/>&nbsp;				</td>
				<td showColumn="models">
<c:out value='${item.models}'/>&nbsp;				</td>
				<td showColumn="type">
<c:out value='${item.type}'/>&nbsp;				</td>
				<td showColumn="enable">
<c:out value='${item.enable}'/>&nbsp;				</td>
				<td showColumn="createTime">
<fmt:formatDate value="${item.createTimeDate}" pattern="yyyy-MM-dd"/>&nbsp;				</td>
			</tr>
	</c:forEach>
		</tbody>
	</table>
	
<pg:pager
			items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}"
			isOffset="true"
			url="${CTX}/admin/huikang/template/do.jsp"
			export="currentPageNumber=pageNumber"
			scope="request">   
		  <pg:param name="range"/>
		  <pg:param name="maxIndexPages"/>
		  <pg:param name="method"/>
		  
		  <pg:param name="searchColumn"/>
		  <pg:param name="searchColumnValue"/>
		  
		   <pg:param name="name"/>
		   <pg:param name="content"/>
		   <pg:param name="models"/>
		   <pg:param name="type"/>
		   <pg:param name="enable"/>
		   <pg:param name="createTime"/>
			<jsp:include page="/common/page/bar.jsp" flush="true"/>共有：<c:out value="${pagination.totalRecord}"/>条记录
		</pg:pager>
</form>

<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_template_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_template_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_template_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/template/do.jsp?method=form","<%=Template.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/template/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_template_page_form',form:'#huikang_template_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="base.jsp" %>