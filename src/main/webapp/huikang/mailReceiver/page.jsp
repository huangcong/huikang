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
   <div class="navBar" style="display: none;"> » <a class="" href="${ctx}/admin/huikang/mailReceiver/"><%=MailReceiver.TABLE_ALIAS%>管理</a> </div>
  </div>
<!--end当前位置--> 

<!--搜索-->
	<div class="up72_search skin_search">
	<form id="huikang_mailReceiver_search_form" name="huikang_mailReceiver_search_form" method="get">
		<div class="up72_search_con">
				<div class="input_search_text"><%=MailReceiver.ALIAS_MAIL_ID%>：<input type="text" id="mailId" name="mailId" class="input_text" value="${query.mailId}"></div>
				<div class="input_search_text"><%=MailReceiver.ALIAS_RECEIVE_ID%>：<input type="text" id="receiveId" name="receiveId" class="input_text" value="${query.receiveId}"></div>
				<div class="input_search_text"><%=MailReceiver.ALIAS_WORK_ORDER_ID%>：<input type="text" id="workOrderId" name="workOrderId" class="input_text" value="${query.workOrderId}"></div>
				<div class="input_search_text"><%=MailReceiver.ALIAS_RECEIVE_NAME%>：<input type="text" id="receiveName" name="receiveName" class="input_text" value="${query.receiveName}"></div>
				<div class="input_search_text"><%=MailReceiver.ALIAS_RECEIVE_MAIL%>：<input type="text" id="receiveMail" name="receiveMail" class="input_text" value="${query.receiveMail}"></div>
				<div class="input_search_text"><%=MailReceiver.ALIAS_RECEIVE_TYPE%>：<input type="text" id="receiveType" name="receiveType" class="input_text" value="${query.receiveType}"></div>
				<div class="input_search_text"><%=MailReceiver.ALIAS_CREATE_TIME%>：<input type="text" id="createTime" name="createTime" class="input_text" value="${query.createTime}"></div>
			<div class="input_search_button"><div class="input_button"><button name="btnU" type="submit" onclick="$(this).parents('form').submit();" class="button" value="搜索"><span>搜索</span></button></div></div>
		</div>
	</form>
	</div>
<!--end搜索-->

<form id="huikang_mailReceiver_page_form" name="huikang_mailReceiver_page_form" action="${CTX}/huikang/mailReceiver/do.jsp?method=${MD_P}"   method="post">

<table id="huikang_mailReceiver_table">
		<thead>
			<tr>
				<th showColumn="checkbox" width="25"><input type="checkbox" id="checkall" onclick="setAllCheckboxState('items',this.checked);" /></th>
				<th showColumn="index" width="20">序号</th>
				<th showColumn="option" width="30"><label>操作</label></th>
				<th sortColumn="mail_id" showColumn="mailId" width="50"><%=MailReceiver.ALIAS_MAIL_ID%></th>
				<th sortColumn="receive_id" showColumn="receiveId" width="50"><%=MailReceiver.ALIAS_RECEIVE_ID%></th>
				<th sortColumn="work_order_id" showColumn="workOrderId" width="50"><%=MailReceiver.ALIAS_WORK_ORDER_ID%></th>
				<th sortColumn="receive_name" showColumn="receiveName" width="50"><%=MailReceiver.ALIAS_RECEIVE_NAME%></th>
				<th sortColumn="receive_mail" showColumn="receiveMail" width="50"><%=MailReceiver.ALIAS_RECEIVE_MAIL%></th>
				<th sortColumn="receive_type" showColumn="receiveType" width="50"><%=MailReceiver.ALIAS_RECEIVE_TYPE%></th>
				<th sortColumn="create_time" showColumn="createTime" width="50"><%=MailReceiver.ALIAS_CREATE_TIME%></th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${items}" var="item" varStatus="status">
			<tr>
				<td showColumn="checkbox"><input type="checkbox" id="items" name="items" value="${item.id}" class="sel" tags="null"></td>
				<td showColumn="index">${page.thisPageFirstElementNumber + status.index}</td>
				<td showColumn="option"><a href="javascript:;"  onclick="show('${ctx}/huikang/mailReceiver/${item.id}/edit','<%=MailReceiver.TABLE_ALIAS%>',600)" class="sysiconBtnNoIcon">编辑</a>&nbsp;</td>
				<td showColumn="mailId">
<c:out value='${item.mailId}'/>&nbsp;				</td>
				<td showColumn="receiveId">
<c:out value='${item.receiveId}'/>&nbsp;				</td>
				<td showColumn="workOrderId">
<c:out value='${item.workOrderId}'/>&nbsp;				</td>
				<td showColumn="receiveName">
<c:out value='${item.receiveName}'/>&nbsp;				</td>
				<td showColumn="receiveMail">
<c:out value='${item.receiveMail}'/>&nbsp;				</td>
				<td showColumn="receiveType">
<c:out value='${item.receiveType}'/>&nbsp;				</td>
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
			url="${CTX}/admin/huikang/mailReceiver/do.jsp"
			export="currentPageNumber=pageNumber"
			scope="request">   
		  <pg:param name="range"/>
		  <pg:param name="maxIndexPages"/>
		  <pg:param name="method"/>
		  
		  <pg:param name="searchColumn"/>
		  <pg:param name="searchColumnValue"/>
		  
		   <pg:param name="mailId"/>
		   <pg:param name="receiveId"/>
		   <pg:param name="workOrderId"/>
		   <pg:param name="receiveName"/>
		   <pg:param name="receiveMail"/>
		   <pg:param name="receiveType"/>
		   <pg:param name="createTime"/>
			<jsp:include page="/common/page/bar.jsp" flush="true"/>共有：<c:out value="${pagination.totalRecord}"/>条记录
		</pg:pager>
</form>

<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_mailReceiver_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_mailReceiver_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_mailReceiver_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/mailReceiver/do.jsp?method=form","<%=MailReceiver.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/mailReceiver/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_mailReceiver_page_form',form:'#huikang_mailReceiver_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="base.jsp" %>