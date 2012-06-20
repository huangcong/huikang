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
   <div class="navBar" style="display: none;"> » <a class="" href="${ctx}/admin/huikang/workOrder/"><%=WorkOrder.TABLE_ALIAS%>管理</a> </div>
  </div>
<!--end当前位置--> 

<!--搜索-->
	<div class="up72_search skin_search">
	<form id="huikang_workOrder_search_form" name="huikang_workOrder_search_form" method="get">
		<div class="up72_search_con">
				<div class="input_search_text"><%=WorkOrder.ALIAS_PATIENT_ID%>：<input type="text" id="patientId" name="patientId" class="input_text" value="${query.patientId}"></div>
				<div class="input_search_text"><%=WorkOrder.ALIAS_LEVEL%>：<input type="text" id="level" name="level" class="input_text" value="${query.level}"></div>
				<div class="input_search_text"><%=WorkOrder.ALIAS_STATUS%>：<input type="text" id="status" name="status" class="input_text" value="${query.status}"></div>
				<div class="input_search_text"><%=WorkOrder.ALIAS_SOURCE%>：<input type="text" id="source" name="source" class="input_text" value="${query.source}"></div>
				<div class="input_search_text"><%=WorkOrder.ALIAS_DOCTOR_ID%>：<input type="text" id="doctorId" name="doctorId" class="input_text" value="${query.doctorId}"></div>
				<div class="input_search_text"><%=WorkOrder.ALIAS_DISEASES%>：<input type="text" id="diseases" name="diseases" class="input_text" value="${query.diseases}"></div>
				<div class="input_search_text"><%=WorkOrder.ALIAS_CREATE_TIME%>：<input type="text" id="createTime" name="createTime" class="input_text" value="${query.createTime}"></div>
				<div class="input_search_text"><%=WorkOrder.ALIAS_UPDATE_TIME%>：<input type="text" id="updateTime" name="updateTime" class="input_text" value="${query.updateTime}"></div>
			<div class="input_search_button"><div class="input_button"><button name="btnU" type="submit" onclick="$(this).parents('form').submit();" class="button" value="搜索"><span>搜索</span></button></div></div>
		</div>
	</form>
	</div>
<!--end搜索-->

<form id="huikang_workOrder_page_form" name="huikang_workOrder_page_form" action="${CTX}/huikang/workOrder/do.jsp?method=${MD_P}"   method="post">

<table id="huikang_workOrder_table">
		<thead>
			<tr>
				<th showColumn="checkbox" width="25"><input type="checkbox" id="checkall" onclick="setAllCheckboxState('items',this.checked);" /></th>
				<th showColumn="index" width="20">序号</th>
				<th showColumn="option" width="30"><label>操作</label></th>
				<th sortColumn="patient_id" showColumn="patientId" width="50"><%=WorkOrder.ALIAS_PATIENT_ID%></th>
				<th sortColumn="level" showColumn="level" width="50"><%=WorkOrder.ALIAS_LEVEL%></th>
				<th sortColumn="status" showColumn="status" width="50"><%=WorkOrder.ALIAS_STATUS%></th>
				<th sortColumn="source" showColumn="source" width="50"><%=WorkOrder.ALIAS_SOURCE%></th>
				<th sortColumn="doctor_id" showColumn="doctorId" width="50"><%=WorkOrder.ALIAS_DOCTOR_ID%></th>
				<th sortColumn="diseases" showColumn="diseases" width="50"><%=WorkOrder.ALIAS_DISEASES%></th>
				<th sortColumn="create_time" showColumn="createTime" width="50"><%=WorkOrder.ALIAS_CREATE_TIME%></th>
				<th sortColumn="update_time" showColumn="updateTime" width="50"><%=WorkOrder.ALIAS_UPDATE_TIME%></th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${items}" var="item" varStatus="status">
			<tr>
				<td showColumn="checkbox"><input type="checkbox" id="items" name="items" value="${item.id}" class="sel" tags="null"></td>
				<td showColumn="index">${page.thisPageFirstElementNumber + status.index}</td>
				<td showColumn="option"><a href="javascript:;"  onclick="show('${ctx}/huikang/workOrder/${item.id}/edit','<%=WorkOrder.TABLE_ALIAS%>',600)" class="sysiconBtnNoIcon">编辑</a>&nbsp;</td>
				<td showColumn="patientId">
<c:out value='${item.patientId}'/>&nbsp;				</td>
				<td showColumn="level">
<c:out value='${item.level}'/>&nbsp;				</td>
				<td showColumn="status">
<c:out value='${item.status}'/>&nbsp;				</td>
				<td showColumn="source">
<c:out value='${item.source}'/>&nbsp;				</td>
				<td showColumn="doctorId">
<c:out value='${item.doctorId}'/>&nbsp;				</td>
				<td showColumn="diseases">
<c:out value='${item.diseases}'/>&nbsp;				</td>
				<td showColumn="createTime">
<fmt:formatDate value="${item.createTimeDate}" pattern="yyyy-MM-dd"/>&nbsp;				</td>
				<td showColumn="updateTime">
<fmt:formatDate value="${item.updateTimeDate}" pattern="yyyy-MM-dd"/>&nbsp;				</td>
			</tr>
	</c:forEach>
		</tbody>
	</table>
	
<pg:pager
			items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}"
			isOffset="true"
			url="${CTX}/admin/huikang/workOrder/do.jsp"
			export="currentPageNumber=pageNumber"
			scope="request">   
		  <pg:param name="range"/>
		  <pg:param name="maxIndexPages"/>
		  <pg:param name="method"/>
		  
		  <pg:param name="searchColumn"/>
		  <pg:param name="searchColumnValue"/>
		  
		   <pg:param name="patientId"/>
		   <pg:param name="level"/>
		   <pg:param name="status"/>
		   <pg:param name="source"/>
		   <pg:param name="doctorId"/>
		   <pg:param name="diseases"/>
		   <pg:param name="createTime"/>
		   <pg:param name="updateTime"/>
			<jsp:include page="/common/page/bar.jsp" flush="true"/>共有：<c:out value="${pagination.totalRecord}"/>条记录
		</pg:pager>
</form>

<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_workOrder_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_workOrder_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_workOrder_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/workOrder/do.jsp?method=form","<%=WorkOrder.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/workOrder/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_workOrder_page_form',form:'#huikang_workOrder_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="base.jsp" %>