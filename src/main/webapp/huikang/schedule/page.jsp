<%@page import="com.up72.huikang.model.*"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="service.jsp"%>
<up72:override name="head">
</up72:override>
<up72:override name="content">
	<!--当前位置-->
	<div class="head_content">
		<div class="navBar" style="display: none;">
			»
			<a class="" href="${ctx}/admin/huikang/schedule/"><%=Schedule.TABLE_ALIAS%>管理</a>
		</div>
	</div>
	<!--end当前位置-->

	<!--搜索-->
	<div class="up72_search skin_search">
		<form id="huikang_schedule_search_form"
			name="huikang_schedule_search_form" method="get">
			<div class="up72_search_con">
				<div class="input_search_text"><%=Schedule.ALIAS_DOCTOR_ID%>：
					<input type="text" id="doctorId" name="doctorId" class="input_text"
						value="${query.doctorId}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_TITLE%>：
					<input type="text" id="title" name="title" class="input_text"
						value="${query.title}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_CONTENT%>：
					<input type="text" id="content" name="content" class="input_text"
						value="${query.content}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_ADDRESS%>：
					<input type="text" id="address" name="address" class="input_text"
						value="${query.address}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_TYPE%>：
					<input type="text" id="type" name="type" class="input_text"
						value="${query.type}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_LECTURER_IDS%>：
					<input type="text" id="lecturerIds" name="lecturerIds"
						class="input_text" value="${query.lecturerIds}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_LECTURER_NAMES%>：
					<input type="text" id="lecturerNames" name="lecturerNames"
						class="input_text" value="${query.lecturerNames}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_MAX_NUM%>：
					<input type="text" id="maxNum" name="maxNum" class="input_text"
						value="${query.maxNum}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_MIN_NUM%>：
					<input type="text" id="minNum" name="minNum" class="input_text"
						value="${query.minNum}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_INVITE_NUM%>：
					<input type="text" id="inviteNum" name="inviteNum"
						class="input_text" value="${query.inviteNum}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_WORK_ORDER_ID%>：
					<input type="text" id="workOrderId" name="workOrderId"
						class="input_text" value="${query.workOrderId}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_SCHEDULE_DATE%>：
					<input type="text" id="scheduleDate" name="scheduleDate"
						class="input_text" value="${query.scheduleDate}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_CREATE_TIME%>：
					<input type="text" id="createTime" name="createTime"
						class="input_text" value="${query.createTime}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_START_TIME%>：
					<input type="text" id="startTime" name="startTime"
						class="input_text" value="${query.startTime}">
				</div>
				<div class="input_search_text"><%=Schedule.ALIAS_END_TIME%>：
					<input type="text" id="endTime" name="endTime" class="input_text"
						value="${query.endTime}">
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

	<form id="huikang_schedule_page_form" name="huikang_schedule_page_form"
		action="${CTX}/huikang/schedule/do.jsp?method=${MD_P}" method="post">

		<table id="huikang_schedule_table">
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
					<th sortColumn="doctor_id" showColumn="doctorId" width="50"><%=Schedule.ALIAS_DOCTOR_ID%></th>
					<th sortColumn="title" showColumn="title" width="50"><%=Schedule.ALIAS_TITLE%></th>
					<th sortColumn="content" showColumn="content" width="50"><%=Schedule.ALIAS_CONTENT%></th>
					<th sortColumn="address" showColumn="address" width="50"><%=Schedule.ALIAS_ADDRESS%></th>
					<th sortColumn="type" showColumn="type" width="50"><%=Schedule.ALIAS_TYPE%></th>
					<th sortColumn="lecturer_ids" showColumn="lecturerIds" width="50"><%=Schedule.ALIAS_LECTURER_IDS%></th>
					<th sortColumn="lecturer_names" showColumn="lecturerNames"
						width="50"><%=Schedule.ALIAS_LECTURER_NAMES%></th>
					<th sortColumn="max_num" showColumn="maxNum" width="50"><%=Schedule.ALIAS_MAX_NUM%></th>
					<th sortColumn="min_num" showColumn="minNum" width="50"><%=Schedule.ALIAS_MIN_NUM%></th>
					<th sortColumn="invite_num" showColumn="inviteNum" width="50"><%=Schedule.ALIAS_INVITE_NUM%></th>
					<th sortColumn="work_order_id" showColumn="workOrderId" width="50"><%=Schedule.ALIAS_WORK_ORDER_ID%></th>
					<th sortColumn="schedule_date" showColumn="scheduleDate" width="50"><%=Schedule.ALIAS_SCHEDULE_DATE%></th>
					<th sortColumn="create_time" showColumn="createTime" width="50"><%=Schedule.ALIAS_CREATE_TIME%></th>
					<th sortColumn="start_time" showColumn="startTime" width="50"><%=Schedule.ALIAS_START_TIME%></th>
					<th sortColumn="end_time" showColumn="endTime" width="50"><%=Schedule.ALIAS_END_TIME%></th>
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
								onclick="show('${ctx}/huikang/schedule/${item.id}/edit','<%=Schedule.TABLE_ALIAS%>',600)"
								class="sysiconBtnNoIcon">编辑</a>&nbsp;
						</td>
						<td showColumn="doctorId">
							<c:out value='${item.doctorId}' />
							&nbsp;
						</td>
						<td showColumn="title">
							<c:out value='${item.title}' />
							&nbsp;
						</td>
						<td showColumn="content">
							<c:out value='${item.content}' />
							&nbsp;
						</td>
						<td showColumn="address">
							<c:out value='${item.address}' />
							&nbsp;
						</td>
						<td showColumn="type">
							<c:out value='${item.type}' />
							&nbsp;
						</td>
						<td showColumn="lecturerIds">
							<c:out value='${item.lecturerIds}' />
							&nbsp;
						</td>
						<td showColumn="lecturerNames">
							<c:out value='${item.lecturerNames}' />
							&nbsp;
						</td>
						<td showColumn="maxNum">
							<c:out value='${item.maxNum}' />
							&nbsp;
						</td>
						<td showColumn="minNum">
							<c:out value='${item.minNum}' />
							&nbsp;
						</td>
						<td showColumn="inviteNum">
							<c:out value='${item.inviteNum}' />
							&nbsp;
						</td>
						<td showColumn="workOrderId">
							<c:out value='${item.workOrderId}' />
							&nbsp;
						</td>
						<td showColumn="scheduleDate">
							<fmt:formatDate value="${item.scheduleDateDate}"
								pattern="yyyy-MM-dd" />
							&nbsp;
						</td>
						<td showColumn="createTime">
							<fmt:formatDate value="${item.createTimeDate}"
								pattern="yyyy-MM-dd" />
							&nbsp;
						</td>
						<td showColumn="startTime">
							<fmt:formatDate value="${item.startTimeDate}"
								pattern="yyyy-MM-dd" />
							&nbsp;
						</td>
						<td showColumn="endTime">
							<fmt:formatDate value="${item.endTimeDate}" pattern="yyyy-MM-dd" />
							&nbsp;
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<pg:pager items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}" isOffset="true"
			url="${CTX}/admin/huikang/schedule/do.jsp"
			export="currentPageNumber=pageNumber" scope="request">
			<pg:param name="range" />
			<pg:param name="maxIndexPages" />
			<pg:param name="method" />

			<pg:param name="searchColumn" />
			<pg:param name="searchColumnValue" />

			<pg:param name="doctorId" />
			<pg:param name="title" />
			<pg:param name="content" />
			<pg:param name="address" />
			<pg:param name="type" />
			<pg:param name="lecturerIds" />
			<pg:param name="lecturerNames" />
			<pg:param name="maxNum" />
			<pg:param name="minNum" />
			<pg:param name="inviteNum" />
			<pg:param name="workOrderId" />
			<pg:param name="scheduleDate" />
			<pg:param name="createTime" />
			<pg:param name="startTime" />
			<pg:param name="endTime" />
			<jsp:include page="/common/page/bar.jsp" flush="true" />共有：<c:out
				value="${pagination.totalRecord}" />条记录
		</pg:pager>
	</form>

	<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_schedule_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_schedule_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_schedule_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/schedule/do.jsp?method=form","<%=Schedule.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/schedule/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_schedule_page_form',form:'#huikang_schedule_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="../common.jsp"%>
<script type="text/javascript">
current_memu(3);
</script>