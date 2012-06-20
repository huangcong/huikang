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
   <div class="navBar" style="display: none;"> » <a class="" href="${ctx}/admin/huikang/workGroup/"><%=WorkGroup.TABLE_ALIAS%>管理</a> </div>
  </div>
<!--end当前位置--> 

<!--搜索-->
	<div class="up72_search skin_search">
	<form id="huikang_workGroup_search_form" name="huikang_workGroup_search_form" method="get">
		<div class="up72_search_con">
				<div class="input_search_text"><%=WorkGroup.ALIAS_NAME%>：<input type="text" id="name" name="name" class="input_text" value="${query.name}"></div>
				<div class="input_search_text"><%=WorkGroup.ALIAS_WORK_GROUP_ID%>：<input type="text" id="workGroupId" name="workGroupId" class="input_text" value="${query.workGroupId}"></div>
				<div class="input_search_text"><%=WorkGroup.ALIAS_DESCRPTION%>：<input type="text" id="descrption" name="descrption" class="input_text" value="${query.descrption}"></div>
				<div class="input_search_text"><%=WorkGroup.ALIAS_SORT%>：<input type="text" id="sort" name="sort" class="input_text" value="${query.sort}"></div>
				<div class="input_search_text"><%=WorkGroup.ALIAS_ENABLE%>：<input type="text" id="enable" name="enable" class="input_text" value="${query.enable}"></div>
			<div class="input_search_button"><div class="input_button"><button name="btnU" type="submit" onclick="$(this).parents('form').submit();" class="button" value="搜索"><span>搜索</span></button></div></div>
		</div>
	</form>
	</div>
<!--end搜索-->

<form id="huikang_workGroup_page_form" name="huikang_workGroup_page_form" action="${CTX}/huikang/workGroup/do.jsp?method=${MD_P}"   method="post">

<table id="huikang_workGroup_table">
		<thead>
			<tr>
				<th showColumn="checkbox" width="25"><input type="checkbox" id="checkall" onclick="setAllCheckboxState('items',this.checked);" /></th>
				<th showColumn="index" width="20">序号</th>
				<th showColumn="option" width="30"><label>操作</label></th>
				<th sortColumn="name" showColumn="name" width="50"><%=WorkGroup.ALIAS_NAME%></th>
				<th sortColumn="work_group_id" showColumn="workGroupId" width="50"><%=WorkGroup.ALIAS_WORK_GROUP_ID%></th>
				<th sortColumn="descrption" showColumn="descrption" width="50"><%=WorkGroup.ALIAS_DESCRPTION%></th>
				<th sortColumn="sort" showColumn="sort" width="50"><%=WorkGroup.ALIAS_SORT%></th>
				<th sortColumn="enable" showColumn="enable" width="50"><%=WorkGroup.ALIAS_ENABLE%></th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${items}" var="item" varStatus="status">
			<tr>
				<td showColumn="checkbox"><input type="checkbox" id="items" name="items" value="${item.id}" class="sel" tags="null"></td>
				<td showColumn="index">${page.thisPageFirstElementNumber + status.index}</td>
				<td showColumn="option"><a href="javascript:;"  onclick="show('${ctx}/huikang/workGroup/${item.id}/edit','<%=WorkGroup.TABLE_ALIAS%>',600)" class="sysiconBtnNoIcon">编辑</a>&nbsp;</td>
				<td showColumn="name">
<c:out value='${item.name}'/>&nbsp;				</td>
				<td showColumn="workGroupId">
<c:out value='${item.workGroupId}'/>&nbsp;				</td>
				<td showColumn="descrption">
<c:out value='${item.descrption}'/>&nbsp;				</td>
				<td showColumn="sort">
<c:out value='${item.sort}'/>&nbsp;				</td>
				<td showColumn="enable">
<c:out value='${item.enable}'/>&nbsp;				</td>
			</tr>
	</c:forEach>
		</tbody>
	</table>
	
<pg:pager
			items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}"
			isOffset="true"
			url="${CTX}/admin/huikang/workGroup/do.jsp"
			export="currentPageNumber=pageNumber"
			scope="request">   
		  <pg:param name="range"/>
		  <pg:param name="maxIndexPages"/>
		  <pg:param name="method"/>
		  
		  <pg:param name="searchColumn"/>
		  <pg:param name="searchColumnValue"/>
		  
		   <pg:param name="name"/>
		   <pg:param name="workGroupId"/>
		   <pg:param name="descrption"/>
		   <pg:param name="sort"/>
		   <pg:param name="enable"/>
			<jsp:include page="/common/page/bar.jsp" flush="true"/>共有：<c:out value="${pagination.totalRecord}"/>条记录
		</pg:pager>
</form>

<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_workGroup_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_workGroup_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_workGroup_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/workGroup/do.jsp?method=form","<%=WorkGroup.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/workGroup/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_workGroup_page_form',form:'#huikang_workGroup_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="base.jsp" %>