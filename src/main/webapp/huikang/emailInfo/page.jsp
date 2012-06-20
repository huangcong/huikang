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
   <div class="navBar" style="display: none;"> » <a class="" href="${ctx}/admin/huikang/emailInfo/"><%=EmailInfo.TABLE_ALIAS%>管理</a> </div>
  </div>
<!--end当前位置--> 

<!--搜索-->
	<div class="up72_search skin_search">
	<form id="huikang_emailInfo_search_form" name="huikang_emailInfo_search_form" method="get">
		<div class="up72_search_con">
				<div class="input_search_text"><%=EmailInfo.ALIAS_DOCTOR_ID%>：<input type="text" id="doctorId" name="doctorId" class="input_text" value="${query.doctorId}"></div>
				<div class="input_search_text"><%=EmailInfo.ALIAS_EMAIL%>：<input type="text" id="email" name="email" class="input_text" value="${query.email}"></div>
				<div class="input_search_text"><%=EmailInfo.ALIAS_SERVER%>：<input type="text" id="server" name="server" class="input_text" value="${query.server}"></div>
				<div class="input_search_text"><%=EmailInfo.ALIAS_PASSWORD%>：<input type="text" id="password" name="password" class="input_text" value="${query.password}"></div>
				<div class="input_search_text"><%=EmailInfo.ALIAS_AUTH%>：<input type="text" id="auth" name="auth" class="input_text" value="${query.auth}"></div>
				<div class="input_search_text"><%=EmailInfo.ALIAS_DELETED%>：<input type="text" id="deleted" name="deleted" class="input_text" value="${query.deleted}"></div>
			<div class="input_search_button"><div class="input_button"><button name="btnU" type="submit" onclick="$(this).parents('form').submit();" class="button" value="搜索"><span>搜索</span></button></div></div>
		</div>
	</form>
	</div>
<!--end搜索-->

<form id="huikang_emailInfo_page_form" name="huikang_emailInfo_page_form" action="${CTX}/huikang/emailInfo/do.jsp?method=${MD_P}"   method="post">

<table id="huikang_emailInfo_table">
		<thead>
			<tr>
				<th showColumn="checkbox" width="25"><input type="checkbox" id="checkall" onclick="setAllCheckboxState('items',this.checked);" /></th>
				<th showColumn="index" width="20">序号</th>
				<th showColumn="option" width="30"><label>操作</label></th>
				<th sortColumn="doctor_id" showColumn="doctorId" width="50"><%=EmailInfo.ALIAS_DOCTOR_ID%></th>
				<th sortColumn="email" showColumn="email" width="50"><%=EmailInfo.ALIAS_EMAIL%></th>
				<th sortColumn="server" showColumn="server" width="50"><%=EmailInfo.ALIAS_SERVER%></th>
				<th sortColumn="password" showColumn="password" width="50"><%=EmailInfo.ALIAS_PASSWORD%></th>
				<th sortColumn="auth" showColumn="auth" width="50"><%=EmailInfo.ALIAS_AUTH%></th>
				<th sortColumn="deleted" showColumn="deleted" width="50"><%=EmailInfo.ALIAS_DELETED%></th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${items}" var="item" varStatus="status">
			<tr>
				<td showColumn="checkbox"><input type="checkbox" id="items" name="items" value="${item.id}" class="sel" tags="null"></td>
				<td showColumn="index">${page.thisPageFirstElementNumber + status.index}</td>
				<td showColumn="option"><a href="javascript:;"  onclick="show('${ctx}/huikang/emailInfo/${item.id}/edit','<%=EmailInfo.TABLE_ALIAS%>',600)" class="sysiconBtnNoIcon">编辑</a>&nbsp;</td>
				<td showColumn="doctorId">
<c:out value='${item.doctorId}'/>&nbsp;				</td>
				<td showColumn="email">
<c:out value='${item.email}'/>&nbsp;				</td>
				<td showColumn="server">
<c:out value='${item.server}'/>&nbsp;				</td>
				<td showColumn="password">
<c:out value='${item.password}'/>&nbsp;				</td>
				<td showColumn="auth">
<c:out value='${item.auth}'/>&nbsp;				</td>
				<td showColumn="deleted">
<c:out value='${item.deleted}'/>&nbsp;				</td>
			</tr>
	</c:forEach>
		</tbody>
	</table>
	
<pg:pager
			items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}"
			isOffset="true"
			url="${CTX}/admin/huikang/emailInfo/do.jsp"
			export="currentPageNumber=pageNumber"
			scope="request">   
		  <pg:param name="range"/>
		  <pg:param name="maxIndexPages"/>
		  <pg:param name="method"/>
		  
		  <pg:param name="searchColumn"/>
		  <pg:param name="searchColumnValue"/>
		  
		   <pg:param name="doctorId"/>
		   <pg:param name="email"/>
		   <pg:param name="server"/>
		   <pg:param name="password"/>
		   <pg:param name="auth"/>
		   <pg:param name="deleted"/>
			<jsp:include page="/common/page/bar.jsp" flush="true"/>共有：<c:out value="${pagination.totalRecord}"/>条记录
		</pg:pager>
</form>

<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_emailInfo_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_emailInfo_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_emailInfo_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/emailInfo/do.jsp?method=form","<%=EmailInfo.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/emailInfo/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_emailInfo_page_form',form:'#huikang_emailInfo_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="base.jsp" %>