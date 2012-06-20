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
   <div class="navBar" style="display: none;"> » <a class="" href="${ctx}/admin/huikang/emailBox/"><%=EmailBox.TABLE_ALIAS%>管理</a> </div>
  </div>
<!--end当前位置--> 

<!--搜索-->
	<div class="up72_search skin_search">
	<form id="huikang_emailBox_search_form" name="huikang_emailBox_search_form" method="get">
		<div class="up72_search_con">
				<div class="input_search_text"><%=EmailBox.ALIAS_SEND_ID%>：<input type="text" id="sendId" name="sendId" class="input_text" value="${query.sendId}"></div>
				<div class="input_search_text"><%=EmailBox.ALIAS_SEND_EMAIL%>：<input type="text" id="sendEmail" name="sendEmail" class="input_text" value="${query.sendEmail}"></div>
				<div class="input_search_text"><%=EmailBox.ALIAS_TITLE%>：<input type="text" id="title" name="title" class="input_text" value="${query.title}"></div>
				<div class="input_search_text"><%=EmailBox.ALIAS_TEMPLATE_ID%>：<input type="text" id="templateId" name="templateId" class="input_text" value="${query.templateId}"></div>
				<div class="input_search_text"><%=EmailBox.ALIAS_TEMPLATE_MODEL%>：<input type="text" id="templateModel" name="templateModel" class="input_text" value="${query.templateModel}"></div>
				<div class="input_search_text"><%=EmailBox.ALIAS_CONTENT%>：<input type="text" id="content" name="content" class="input_text" value="${query.content}"></div>
				<div class="input_search_text"><%=EmailBox.ALIAS_FILES%>：<input type="text" id="files" name="files" class="input_text" value="${query.files}"></div>
				<div class="input_search_text"><%=EmailBox.ALIAS_TYPE%>：<input type="text" id="type" name="type" class="input_text" value="${query.type}"></div>
				<div class="input_search_text"><%=EmailBox.ALIAS_DELETED%>：<input type="text" id="deleted" name="deleted" class="input_text" value="${query.deleted}"></div>
				<div class="input_search_text"><%=EmailBox.ALIAS_SEND_TIME%>：<input type="text" id="sendTime" name="sendTime" class="input_text" value="${query.sendTime}"></div>
				<div class="input_search_text"><%=EmailBox.ALIAS_RESULT%>：<input type="text" id="result" name="result" class="input_text" value="${query.result}"></div>
			<div class="input_search_button"><div class="input_button"><button name="btnU" type="submit" onclick="$(this).parents('form').submit();" class="button" value="搜索"><span>搜索</span></button></div></div>
		</div>
	</form>
	</div>
<!--end搜索-->

<form id="huikang_emailBox_page_form" name="huikang_emailBox_page_form" action="${CTX}/huikang/emailBox/do.jsp?method=${MD_P}"   method="post">

<table id="huikang_emailBox_table">
		<thead>
			<tr>
				<th showColumn="checkbox" width="25"><input type="checkbox" id="checkall" onclick="setAllCheckboxState('items',this.checked);" /></th>
				<th showColumn="index" width="20">序号</th>
				<th showColumn="option" width="30"><label>操作</label></th>
				<th sortColumn="send_id" showColumn="sendId" width="50"><%=EmailBox.ALIAS_SEND_ID%></th>
				<th sortColumn="send_email" showColumn="sendEmail" width="50"><%=EmailBox.ALIAS_SEND_EMAIL%></th>
				<th sortColumn="title" showColumn="title" width="50"><%=EmailBox.ALIAS_TITLE%></th>
				<th sortColumn="template_id" showColumn="templateId" width="50"><%=EmailBox.ALIAS_TEMPLATE_ID%></th>
				<th sortColumn="template_model" showColumn="templateModel" width="50"><%=EmailBox.ALIAS_TEMPLATE_MODEL%></th>
				<th sortColumn="content" showColumn="content" width="50"><%=EmailBox.ALIAS_CONTENT%></th>
				<th sortColumn="files" showColumn="files" width="50"><%=EmailBox.ALIAS_FILES%></th>
				<th sortColumn="type" showColumn="type" width="50"><%=EmailBox.ALIAS_TYPE%></th>
				<th sortColumn="deleted" showColumn="deleted" width="50"><%=EmailBox.ALIAS_DELETED%></th>
				<th sortColumn="send_time" showColumn="sendTime" width="50"><%=EmailBox.ALIAS_SEND_TIME%></th>
				<th sortColumn="result" showColumn="result" width="50"><%=EmailBox.ALIAS_RESULT%></th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${items}" var="item" varStatus="status">
			<tr>
				<td showColumn="checkbox"><input type="checkbox" id="items" name="items" value="${item.id}" class="sel" tags="null"></td>
				<td showColumn="index">${page.thisPageFirstElementNumber + status.index}</td>
				<td showColumn="option"><a href="javascript:;"  onclick="show('${ctx}/huikang/emailBox/${item.id}/edit','<%=EmailBox.TABLE_ALIAS%>',600)" class="sysiconBtnNoIcon">编辑</a>&nbsp;</td>
				<td showColumn="sendId">
<c:out value='${item.sendId}'/>&nbsp;				</td>
				<td showColumn="sendEmail">
<c:out value='${item.sendEmail}'/>&nbsp;				</td>
				<td showColumn="title">
<c:out value='${item.title}'/>&nbsp;				</td>
				<td showColumn="templateId">
<c:out value='${item.templateId}'/>&nbsp;				</td>
				<td showColumn="templateModel">
<c:out value='${item.templateModel}'/>&nbsp;				</td>
				<td showColumn="content">
<c:out value='${item.content}'/>&nbsp;				</td>
				<td showColumn="files">
<c:out value='${item.files}'/>&nbsp;				</td>
				<td showColumn="type">
<c:out value='${item.type}'/>&nbsp;				</td>
				<td showColumn="deleted">
<c:out value='${item.deleted}'/>&nbsp;				</td>
				<td showColumn="sendTime">
<fmt:formatDate value="${item.sendTimeDate}" pattern="yyyy-MM-dd"/>&nbsp;				</td>
				<td showColumn="result">
<c:out value='${item.result}'/>&nbsp;				</td>
			</tr>
	</c:forEach>
		</tbody>
	</table>
	
<pg:pager
			items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}"
			isOffset="true"
			url="${CTX}/admin/huikang/emailBox/do.jsp"
			export="currentPageNumber=pageNumber"
			scope="request">   
		  <pg:param name="range"/>
		  <pg:param name="maxIndexPages"/>
		  <pg:param name="method"/>
		  
		  <pg:param name="searchColumn"/>
		  <pg:param name="searchColumnValue"/>
		  
		   <pg:param name="sendId"/>
		   <pg:param name="sendEmail"/>
		   <pg:param name="title"/>
		   <pg:param name="templateId"/>
		   <pg:param name="templateModel"/>
		   <pg:param name="content"/>
		   <pg:param name="files"/>
		   <pg:param name="type"/>
		   <pg:param name="deleted"/>
		   <pg:param name="sendTime"/>
		   <pg:param name="result"/>
			<jsp:include page="/common/page/bar.jsp" flush="true"/>共有：<c:out value="${pagination.totalRecord}"/>条记录
		</pg:pager>
</form>

<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_emailBox_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_emailBox_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_emailBox_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/emailBox/do.jsp?method=form","<%=EmailBox.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/emailBox/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_emailBox_page_form',form:'#huikang_emailBox_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="base.jsp" %>