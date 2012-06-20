<%@page import="com.up72.huikang.model.*"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="service.jsp"%>
<up72:override name="head">
	<script type="text/javascript"
		src="<c:url value="/scripts/extend.div.1.0.js"/>"></script>
	<script type="text/javascript" src="${ctx}/scripts/columnshow.js"></script>
	<script type="text/javascript" src="${ctx}/scripts/rest.js"></script>

	<link href="${ctx}/scripts/grid/css/flexigrid.css" type="text/css"
		rel="stylesheet">
	<script type="text/javascript"
		src="${ctx}/scripts/grid/flexigrid-source.js"></script>
</up72:override>

<up72:override name="content">
	<!--当前位置-->
	<div class="head_content">
		<div class="navBar" style="display: none;">
			»
			<a class="" href="${ctx}/admin/huikang/disease/"><%=Disease.TABLE_ALIAS%>管理</a>
		</div>
	</div>
	<!--end当前位置-->

	<!--搜索-->
	<div class="up72_search skin_search">
		<form id="huikang_disease_search_form"
			name="huikang_disease_search_form" method="get">
			<div class="up72_search_con">
				<div class="input_search_text"><%=Disease.ALIAS_CODE%>：
					<input type="text" id="code" name="code" class="input_text"
						value="${query.code}">
				</div>
				<div class="input_search_text"><%=Disease.ALIAS_PARENT_ID%>：
					<input type="text" id="parentId" name="parentId" class="input_text"
						value="${query.parentId}">
				</div>
				<div class="input_search_text"><%=Disease.ALIAS_ROOT_ID%>：
					<input type="text" id="rootId" name="rootId" class="input_text"
						value="${query.rootId}">
				</div>
				<div class="input_search_text"><%=Disease.ALIAS_PATH%>：
					<input type="text" id="path" name="path" class="input_text"
						value="${query.path}">
				</div>
				<div class="input_search_text"><%=Disease.ALIAS_NAME%>：
					<input type="text" id="name" name="name" class="input_text"
						value="${query.name}">
				</div>
				<div class="input_search_text"><%=Disease.ALIAS_VALIDABLE%>：
					<input type="text" id="validable" name="validable"
						class="input_text" value="${query.validable}">
				</div>
				<div class="input_search_text"><%=Disease.ALIAS_GB_NAME%>：
					<input type="text" id="gbName" name="gbName" class="input_text"
						value="${query.gbName}">
				</div>
				<div class="input_search_text"><%=Disease.ALIAS_TYPE%>：
					<input type="text" id="type" name="type" class="input_text"
						value="${query.type}">
				</div>
				<div class="input_search_text"><%=Disease.ALIAS_DIAGNOSE_RULE%>：
					<input type="text" id="diagnoseRule" name="diagnoseRule"
						class="input_text" value="${query.diagnoseRule}">
				</div>
				<div class="input_search_text"><%=Disease.ALIAS_URGENT_RULE%>：
					<input type="text" id="urgentRule" name="urgentRule"
						class="input_text" value="${query.urgentRule}">
				</div>
				<div class="input_search_text"><%=Disease.ALIAS_RISK_RULE%>：
					<input type="text" id="riskRule" name="riskRule" class="input_text"
						value="${query.riskRule}">
				</div>
				<div class="input_search_text"><%=Disease.ALIAS_NORMAL_RULE%>：
					<input type="text" id="normalRule" name="normalRule"
						class="input_text" value="${query.normalRule}">
				</div>
				<div class="input_search_text"><%=Disease.ALIAS_URL%>：
					<input type="text" id="url" name="url" class="input_text"
						value="${query.url}">
				</div>
				<div class="input_search_button">
					<div class="input_button">
						<button name="btnU" type="submit"
							onclick="$(this).parents('form').submit();" class="button"
							value="搜索">
							<span>搜索</span>
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!--end搜索-->

	<form id="huikang_disease_page_form" name="huikang_disease_page_form"
		action="${CTX}/huikang/disease/do.jsp?method=${MD_P}" method="post">

		<table id="huikang_disease_table">
			<thead>
				<tr>
					<th showColumn="checkbox" width="25">
						<input type="checkbox" id="checkall"
							onclick="setAllCheckboxState('items',this.checked);" />
					</th>
					<th showColumn="index" width="20">
						序号
					</th>
					<th showColumn="option" width="30">
						<label>
							操作
						</label>
					</th>
					<th sortColumn="code" showColumn="code" width="50"><%=Disease.ALIAS_CODE%></th>
					<th sortColumn="parent_id" showColumn="parentId" width="50"><%=Disease.ALIAS_PARENT_ID%></th>
					<th sortColumn="root_id" showColumn="rootId" width="50"><%=Disease.ALIAS_ROOT_ID%></th>
					<th sortColumn="path" showColumn="path" width="50"><%=Disease.ALIAS_PATH%></th>
					<th sortColumn="name" showColumn="name" width="50"><%=Disease.ALIAS_NAME%></th>
					<th sortColumn="validable" showColumn="validable" width="50"><%=Disease.ALIAS_VALIDABLE%></th>
					<th sortColumn="gb_name" showColumn="gbName" width="50"><%=Disease.ALIAS_GB_NAME%></th>
					<th sortColumn="type" showColumn="type" width="50"><%=Disease.ALIAS_TYPE%></th>
					<th sortColumn="diagnose_rule" showColumn="diagnoseRule" width="50"><%=Disease.ALIAS_DIAGNOSE_RULE%></th>
					<th sortColumn="urgent_rule" showColumn="urgentRule" width="50"><%=Disease.ALIAS_URGENT_RULE%></th>
					<th sortColumn="risk_rule" showColumn="riskRule" width="50"><%=Disease.ALIAS_RISK_RULE%></th>
					<th sortColumn="normal_rule" showColumn="normalRule" width="50"><%=Disease.ALIAS_NORMAL_RULE%></th>
					<th sortColumn="url" showColumn="url" width="50"><%=Disease.ALIAS_URL%></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${items}" var="item" varStatus="status">
					<tr>
						<td showColumn="checkbox">
							<input type="checkbox" id="items" name="items" value="${item.id}"
								class="sel" tags="null">
						</td>
						<td showColumn="index">
							${page.thisPageFirstElementNumber + status.index}
						</td>
						<td showColumn="option">
							<a href="javascript:;"
								onclick="show('${ctx}/huikang/disease/${item.id}/edit','<%=Disease.TABLE_ALIAS%>',600)"
								class="sysiconBtnNoIcon">编辑</a>&nbsp;
						</td>
						<td showColumn="code">
							<c:out value='${item.code}' />
							&nbsp;
						</td>
						<td showColumn="parentId">
							<c:out value='${item.parentId}' />
							&nbsp;
						</td>
						<td showColumn="rootId">
							<c:out value='${item.rootId}' />
							&nbsp;
						</td>
						<td showColumn="path">
							<c:out value='${item.path}' />
							&nbsp;
						</td>
						<td showColumn="name">
							<c:out value='${item.name}' />
							&nbsp;
						</td>
						<td showColumn="validable">
							<c:out value='${item.validable}' />
							&nbsp;
						</td>
						<td showColumn="gbName">
							<c:out value='${item.gbName}' />
							&nbsp;
						</td>
						<td showColumn="type">
							<c:out value='${item.type}' />
							&nbsp;
						</td>
						<td showColumn="diagnoseRule">
							<c:out value='${item.diagnoseRule}' />
							&nbsp;
						</td>
						<td showColumn="urgentRule">
							<c:out value='${item.urgentRule}' />
							&nbsp;
						</td>
						<td showColumn="riskRule">
							<c:out value='${item.riskRule}' />
							&nbsp;
						</td>
						<td showColumn="normalRule">
							<c:out value='${item.normalRule}' />
							&nbsp;
						</td>
						<td showColumn="url">
							<c:out value='${item.url}' />
							&nbsp;
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<pg:pager items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}" isOffset="true"
			url="${CTX}/admin/huikang/disease/do.jsp"
			export="currentPageNumber=pageNumber" scope="request">
			<pg:param name="range" />
			<pg:param name="maxIndexPages" />
			<pg:param name="method" />

			<pg:param name="searchColumn" />
			<pg:param name="searchColumnValue" />

			<pg:param name="code" />
			<pg:param name="parentId" />
			<pg:param name="rootId" />
			<pg:param name="path" />
			<pg:param name="name" />
			<pg:param name="validable" />
			<pg:param name="gbName" />
			<pg:param name="type" />
			<pg:param name="diagnoseRule" />
			<pg:param name="urgentRule" />
			<pg:param name="riskRule" />
			<pg:param name="normalRule" />
			<pg:param name="url" />
			<jsp:include page="/common/page/bar.jsp" flush="true" />共有：<c:out
				value="${pagination.totalRecord}" />条记录
		</pg:pager>
	</form>

	<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_disease_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_disease_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_disease_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/disease/do.jsp?method=form","<%=Disease.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/disease/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_disease_page_form',form:'#huikang_disease_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="../common.jsp"%>