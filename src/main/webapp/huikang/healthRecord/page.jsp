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
   <div class="navBar" style="display: none;"> » <a class="" href="${ctx}/admin/huikang/healthRecord/"><%=HealthRecord.TABLE_ALIAS%>管理</a> </div>
  </div>
<!--end当前位置--> 

<!--搜索-->
	<div class="up72_search skin_search">
	<form id="huikang_healthRecord_search_form" name="huikang_healthRecord_search_form" method="get">
		<div class="up72_search_con">
				<div class="input_search_text"><%=HealthRecord.ALIAS_PATIENT_ID%>：<input type="text" id="patientId" name="patientId" class="input_text" value="${query.patientId}"></div>
				<div class="input_search_text"><%=HealthRecord.ALIAS_WORK_ORDER_ID%>：<input type="text" id="workOrderId" name="workOrderId" class="input_text" value="${query.workOrderId}"></div>
				<div class="input_search_text"><%=HealthRecord.ALIAS_BEGIN_DATE%>：<input type="text" id="beginDate" name="beginDate" class="input_text" value="${query.beginDate}"></div>
				<div class="input_search_text"><%=HealthRecord.ALIAS_END_DATE%>：<input type="text" id="endDate" name="endDate" class="input_text" value="${query.endDate}"></div>
				<div class="input_search_text"><%=HealthRecord.ALIAS_ITEM%>：<input type="text" id="item" name="item" class="input_text" value="${query.item}"></div>
				<div class="input_search_text"><%=HealthRecord.ALIAS_PLACE%>：<input type="text" id="place" name="place" class="input_text" value="${query.place}"></div>
				<div class="input_search_text"><%=HealthRecord.ALIAS_FREQUENCY%>：<input type="text" id="frequency" name="frequency" class="input_text" value="${query.frequency}"></div>
				<div class="input_search_text"><%=HealthRecord.ALIAS_DOSE%>：<input type="text" id="dose" name="dose" class="input_text" value="${query.dose}"></div>
				<div class="input_search_text"><%=HealthRecord.ALIAS_CONFIDENCE%>：<input type="text" id="confidence" name="confidence" class="input_text" value="${query.confidence}"></div>
				<div class="input_search_text"><%=HealthRecord.ALIAS_RESULT%>：<input type="text" id="result" name="result" class="input_text" value="${query.result}"></div>
				<div class="input_search_text"><%=HealthRecord.ALIAS_SORT%>：<input type="text" id="sort" name="sort" class="input_text" value="${query.sort}"></div>
			<div class="input_search_button"><div class="input_button"><button name="btnU" type="submit" onclick="$(this).parents('form').submit();" class="button" value="搜索"><span>搜索</span></button></div></div>
		</div>
	</form>
	</div>
<!--end搜索-->

<form id="huikang_healthRecord_page_form" name="huikang_healthRecord_page_form" action="${CTX}/huikang/healthRecord/do.jsp?method=${MD_P}"   method="post">

<table id="huikang_healthRecord_table">
		<thead>
			<tr>
				<th showColumn="checkbox" width="25"><input type="checkbox" id="checkall" onclick="setAllCheckboxState('items',this.checked);" /></th>
				<th showColumn="index" width="20">序号</th>
				<th showColumn="option" width="30"><label>操作</label></th>
				<th sortColumn="patient_id" showColumn="patientId" width="50"><%=HealthRecord.ALIAS_PATIENT_ID%></th>
				<th sortColumn="work_order_id" showColumn="workOrderId" width="50"><%=HealthRecord.ALIAS_WORK_ORDER_ID%></th>
				<th sortColumn="begin_date" showColumn="beginDate" width="50"><%=HealthRecord.ALIAS_BEGIN_DATE%></th>
				<th sortColumn="end_date" showColumn="endDate" width="50"><%=HealthRecord.ALIAS_END_DATE%></th>
				<th sortColumn="item" showColumn="item" width="50"><%=HealthRecord.ALIAS_ITEM%></th>
				<th sortColumn="place" showColumn="place" width="50"><%=HealthRecord.ALIAS_PLACE%></th>
				<th sortColumn="frequency" showColumn="frequency" width="50"><%=HealthRecord.ALIAS_FREQUENCY%></th>
				<th sortColumn="dose" showColumn="dose" width="50"><%=HealthRecord.ALIAS_DOSE%></th>
				<th sortColumn="confidence" showColumn="confidence" width="50"><%=HealthRecord.ALIAS_CONFIDENCE%></th>
				<th sortColumn="result" showColumn="result" width="50"><%=HealthRecord.ALIAS_RESULT%></th>
				<th sortColumn="sort" showColumn="sort" width="50"><%=HealthRecord.ALIAS_SORT%></th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${items}" var="item" varStatus="status">
			<tr>
				<td showColumn="checkbox"><input type="checkbox" id="items" name="items" value="${item.id}" class="sel" tags="null"></td>
				<td showColumn="index">${page.thisPageFirstElementNumber + status.index}</td>
				<td showColumn="option"><a href="javascript:;"  onclick="show('${ctx}/huikang/healthRecord/${item.id}/edit','<%=HealthRecord.TABLE_ALIAS%>',600)" class="sysiconBtnNoIcon">编辑</a>&nbsp;</td>
				<td showColumn="patientId">
<c:out value='${item.patientId}'/>&nbsp;				</td>
				<td showColumn="workOrderId">
<c:out value='${item.workOrderId}'/>&nbsp;				</td>
				<td showColumn="beginDate">
<fmt:formatDate value="${item.beginDateDate}" pattern="yyyy-MM-dd"/>&nbsp;				</td>
				<td showColumn="endDate">
<fmt:formatDate value="${item.endDateDate}" pattern="yyyy-MM-dd"/>&nbsp;				</td>
				<td showColumn="item">
<c:out value='${item.item}'/>&nbsp;				</td>
				<td showColumn="place">
<c:out value='${item.place}'/>&nbsp;				</td>
				<td showColumn="frequency">
<c:out value='${item.frequency}'/>&nbsp;				</td>
				<td showColumn="dose">
<c:out value='${item.dose}'/>&nbsp;				</td>
				<td showColumn="confidence">
<c:out value='${item.confidence}'/>&nbsp;				</td>
				<td showColumn="result">
<c:out value='${item.result}'/>&nbsp;				</td>
				<td showColumn="sort">
<c:out value='${item.sort}'/>&nbsp;				</td>
			</tr>
	</c:forEach>
		</tbody>
	</table>
	
<pg:pager
			items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}"
			isOffset="true"
			url="${CTX}/admin/huikang/healthRecord/do.jsp"
			export="currentPageNumber=pageNumber"
			scope="request">   
		  <pg:param name="range"/>
		  <pg:param name="maxIndexPages"/>
		  <pg:param name="method"/>
		  
		  <pg:param name="searchColumn"/>
		  <pg:param name="searchColumnValue"/>
		  
		   <pg:param name="patientId"/>
		   <pg:param name="workOrderId"/>
		   <pg:param name="beginDate"/>
		   <pg:param name="endDate"/>
		   <pg:param name="item"/>
		   <pg:param name="place"/>
		   <pg:param name="frequency"/>
		   <pg:param name="dose"/>
		   <pg:param name="confidence"/>
		   <pg:param name="result"/>
		   <pg:param name="sort"/>
			<jsp:include page="/common/page/bar.jsp" flush="true"/>共有：<c:out value="${pagination.totalRecord}"/>条记录
		</pg:pager>
</form>

<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_healthRecord_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_healthRecord_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_healthRecord_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/healthRecord/do.jsp?method=form","<%=HealthRecord.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/healthRecord/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_healthRecord_page_form',form:'#huikang_healthRecord_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="base.jsp" %>