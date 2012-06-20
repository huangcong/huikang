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
   <div class="navBar" style="display: none;"> » <a class="" href="${ctx}/admin/huikang/patientDisease/"><%=PatientDisease.TABLE_ALIAS%>管理</a> </div>
  </div>
<!--end当前位置--> 

<!--搜索-->
	<div class="up72_search skin_search">
	<form id="huikang_patientDisease_search_form" name="huikang_patientDisease_search_form" method="get">
		<div class="up72_search_con">
				<div class="input_search_text"><%=PatientDisease.ALIAS_PATIENT_ID%>：<input type="text" id="patientId" name="patientId" class="input_text" value="${query.patientId}"></div>
				<div class="input_search_text"><%=PatientDisease.ALIAS_DISEASE_ID%>：<input type="text" id="diseaseId" name="diseaseId" class="input_text" value="${query.diseaseId}"></div>
				<div class="input_search_text"><%=PatientDisease.ALIAS_DIAGNOSE_TIME%>：<input type="text" id="diagnoseTime" name="diagnoseTime" class="input_text" value="${query.diagnoseTime}"></div>
				<div class="input_search_text"><%=PatientDisease.ALIAS_DIAGNOSE_ADDRESS%>：<input type="text" id="diagnoseAddress" name="diagnoseAddress" class="input_text" value="${query.diagnoseAddress}"></div>
				<div class="input_search_text"><%=PatientDisease.ALIAS_FAMILY_HISTORY%>：<input type="text" id="familyHistory" name="familyHistory" class="input_text" value="${query.familyHistory}"></div>
				<div class="input_search_text"><%=PatientDisease.ALIAS_YEARS%>：<input type="text" id="years" name="years" class="input_text" value="${query.years}"></div>
			<div class="input_search_button"><div class="input_button"><button name="btnU" type="submit" onclick="$(this).parents('form').submit();" class="button" value="搜索"><span>搜索</span></button></div></div>
		</div>
	</form>
	</div>
<!--end搜索-->

<form id="huikang_patientDisease_page_form" name="huikang_patientDisease_page_form" action="${CTX}/huikang/patientDisease/do.jsp?method=${MD_P}"   method="post">

<table id="huikang_patientDisease_table">
		<thead>
			<tr>
				<th showColumn="checkbox" width="25"><input type="checkbox" id="checkall" onclick="setAllCheckboxState('items',this.checked);" /></th>
				<th showColumn="index" width="20">序号</th>
				<th showColumn="option" width="30"><label>操作</label></th>
				<th sortColumn="patient_id" showColumn="patientId" width="50"><%=PatientDisease.ALIAS_PATIENT_ID%></th>
				<th sortColumn="disease_id" showColumn="diseaseId" width="50"><%=PatientDisease.ALIAS_DISEASE_ID%></th>
				<th sortColumn="diagnose_time" showColumn="diagnoseTime" width="50"><%=PatientDisease.ALIAS_DIAGNOSE_TIME%></th>
				<th sortColumn="diagnose_address" showColumn="diagnoseAddress" width="50"><%=PatientDisease.ALIAS_DIAGNOSE_ADDRESS%></th>
				<th sortColumn="family_history" showColumn="familyHistory" width="50"><%=PatientDisease.ALIAS_FAMILY_HISTORY%></th>
				<th sortColumn="years" showColumn="years" width="50"><%=PatientDisease.ALIAS_YEARS%></th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${items}" var="item" varStatus="status">
			<tr>
				<td showColumn="checkbox"><input type="checkbox" id="items" name="items" value="${item.id}" class="sel" tags="null"></td>
				<td showColumn="index">${page.thisPageFirstElementNumber + status.index}</td>
				<td showColumn="option"><a href="javascript:;"  onclick="show('${ctx}/huikang/patientDisease/${item.id}/edit','<%=PatientDisease.TABLE_ALIAS%>',600)" class="sysiconBtnNoIcon">编辑</a>&nbsp;</td>
				<td showColumn="patientId">
<c:out value='${item.patientId}'/>&nbsp;				</td>
				<td showColumn="diseaseId">
<c:out value='${item.diseaseId}'/>&nbsp;				</td>
				<td showColumn="diagnoseTime">
<fmt:formatDate value="${item.diagnoseTimeDate}" pattern="yyyy-MM-dd"/>&nbsp;				</td>
				<td showColumn="diagnoseAddress">
<c:out value='${item.diagnoseAddress}'/>&nbsp;				</td>
				<td showColumn="familyHistory">
<c:out value='${item.familyHistory}'/>&nbsp;				</td>
				<td showColumn="years">
<c:out value='${item.years}'/>&nbsp;				</td>
			</tr>
	</c:forEach>
		</tbody>
	</table>
	
<pg:pager
			items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}"
			isOffset="true"
			url="${CTX}/admin/huikang/patientDisease/do.jsp"
			export="currentPageNumber=pageNumber"
			scope="request">   
		  <pg:param name="range"/>
		  <pg:param name="maxIndexPages"/>
		  <pg:param name="method"/>
		  
		  <pg:param name="searchColumn"/>
		  <pg:param name="searchColumnValue"/>
		  
		   <pg:param name="patientId"/>
		   <pg:param name="diseaseId"/>
		   <pg:param name="diagnoseTime"/>
		   <pg:param name="diagnoseAddress"/>
		   <pg:param name="familyHistory"/>
		   <pg:param name="years"/>
			<jsp:include page="/common/page/bar.jsp" flush="true"/>共有：<c:out value="${pagination.totalRecord}"/>条记录
		</pg:pager>
</form>

<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_patientDisease_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_patientDisease_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_patientDisease_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/patientDisease/do.jsp?method=form","<%=PatientDisease.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/patientDisease/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_patientDisease_page_form',form:'#huikang_patientDisease_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="base.jsp" %>