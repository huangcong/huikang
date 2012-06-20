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
   <div class="navBar" style="display: none;"> » <a class="" href="${ctx}/admin/huikang/doctor/"><%=Doctor.TABLE_ALIAS%>管理</a> </div>
  </div>
<!--end当前位置--> 

<!--搜索-->
	<div class="up72_search skin_search">
	<form id="huikang_doctor_search_form" name="huikang_doctor_search_form" method="get">
		<div class="up72_search_con">
				<div class="input_search_text"><%=Doctor.ALIAS_USER_NAME%>：<input type="text" id="userName" name="userName" class="input_text" value="${query.userName}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_PASSWORD%>：<input type="text" id="password" name="password" class="input_text" value="${query.password}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_REAL_NAME%>：<input type="text" id="realName" name="realName" class="input_text" value="${query.realName}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_BIRTHDAY%>：<input type="text" id="birthday" name="birthday" class="input_text" value="${query.birthday}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_SEX%>：<input type="text" id="sex" name="sex" class="input_text" value="${query.sex}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_ADDRESS%>：<input type="text" id="address" name="address" class="input_text" value="${query.address}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_PHONE%>：<input type="text" id="phone" name="phone" class="input_text" value="${query.phone}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_MOBILE%>：<input type="text" id="mobile" name="mobile" class="input_text" value="${query.mobile}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_EMAIL%>：<input type="text" id="email" name="email" class="input_text" value="${query.email}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_MAIN_TYPE%>：<input type="text" id="mainType" name="mainType" class="input_text" value="${query.mainType}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_NATION%>：<input type="text" id="nation" name="nation" class="input_text" value="${query.nation}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_MARRIAGE%>：<input type="text" id="marriage" name="marriage" class="input_text" value="${query.marriage}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_COMPANY%>：<input type="text" id="company" name="company" class="input_text" value="${query.company}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_WORK_GROUP_ID%>：<input type="text" id="workGroupId" name="workGroupId" class="input_text" value="${query.workGroupId}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_SITE%>：<input type="text" id="site" name="site" class="input_text" value="${query.site}"></div>
				<div class="input_search_text"><%=Doctor.ALIAS_EMAIL_VALID%>：<input type="text" id="emailValid" name="emailValid" class="input_text" value="${query.emailValid}"></div>
			<div class="input_search_button"><div class="input_button"><button name="btnU" type="submit" onclick="$(this).parents('form').submit();" class="button" value="搜索"><span>搜索</span></button></div></div>
		</div>
	</form>
	</div>
<!--end搜索-->

<form id="huikang_doctor_page_form" name="huikang_doctor_page_form" action="${CTX}/huikang/doctor/do.jsp?method=${MD_P}"   method="post">

<table id="huikang_doctor_table">
		<thead>
			<tr>
				<th showColumn="checkbox" width="25"><input type="checkbox" id="checkall" onclick="setAllCheckboxState('items',this.checked);" /></th>
				<th showColumn="index" width="20">序号</th>
				<th showColumn="option" width="30"><label>操作</label></th>
				<th sortColumn="user_name" showColumn="userName" width="50"><%=Doctor.ALIAS_USER_NAME%></th>
				<th sortColumn="password" showColumn="password" width="50"><%=Doctor.ALIAS_PASSWORD%></th>
				<th sortColumn="real_name" showColumn="realName" width="50"><%=Doctor.ALIAS_REAL_NAME%></th>
				<th sortColumn="birthday" showColumn="birthday" width="50"><%=Doctor.ALIAS_BIRTHDAY%></th>
				<th sortColumn="sex" showColumn="sex" width="50"><%=Doctor.ALIAS_SEX%></th>
				<th sortColumn="address" showColumn="address" width="50"><%=Doctor.ALIAS_ADDRESS%></th>
				<th sortColumn="phone" showColumn="phone" width="50"><%=Doctor.ALIAS_PHONE%></th>
				<th sortColumn="mobile" showColumn="mobile" width="50"><%=Doctor.ALIAS_MOBILE%></th>
				<th sortColumn="email" showColumn="email" width="50"><%=Doctor.ALIAS_EMAIL%></th>
				<th sortColumn="main_type" showColumn="mainType" width="50"><%=Doctor.ALIAS_MAIN_TYPE%></th>
				<th sortColumn="nation" showColumn="nation" width="50"><%=Doctor.ALIAS_NATION%></th>
				<th sortColumn="marriage" showColumn="marriage" width="50"><%=Doctor.ALIAS_MARRIAGE%></th>
				<th sortColumn="company" showColumn="company" width="50"><%=Doctor.ALIAS_COMPANY%></th>
				<th sortColumn="work_group_id" showColumn="workGroupId" width="50"><%=Doctor.ALIAS_WORK_GROUP_ID%></th>
				<th sortColumn="site" showColumn="site" width="50"><%=Doctor.ALIAS_SITE%></th>
				<th sortColumn="email_valid" showColumn="emailValid" width="50"><%=Doctor.ALIAS_EMAIL_VALID%></th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${items}" var="item" varStatus="status">
			<tr>
				<td showColumn="checkbox"><input type="checkbox" id="items" name="items" value="${item.id}" class="sel" tags="null"></td>
				<td showColumn="index">${page.thisPageFirstElementNumber + status.index}</td>
				<td showColumn="option"><a href="javascript:;"  onclick="show('${ctx}/huikang/doctor/${item.id}/edit','<%=Doctor.TABLE_ALIAS%>',600)" class="sysiconBtnNoIcon">编辑</a>&nbsp;</td>
				<td showColumn="userName">
<c:out value='${item.userName}'/>&nbsp;				</td>
				<td showColumn="password">
<c:out value='${item.password}'/>&nbsp;				</td>
				<td showColumn="realName">
<c:out value='${item.realName}'/>&nbsp;				</td>
				<td showColumn="birthday">
<c:out value='${item.birthday}'/>&nbsp;				</td>
				<td showColumn="sex">
<c:out value='${item.sex}'/>&nbsp;				</td>
				<td showColumn="address">
<c:out value='${item.address}'/>&nbsp;				</td>
				<td showColumn="phone">
<c:out value='${item.phone}'/>&nbsp;				</td>
				<td showColumn="mobile">
<c:out value='${item.mobile}'/>&nbsp;				</td>
				<td showColumn="email">
<c:out value='${item.email}'/>&nbsp;				</td>
				<td showColumn="mainType">
<c:out value='${item.mainType}'/>&nbsp;				</td>
				<td showColumn="nation">
<c:out value='${item.nation}'/>&nbsp;				</td>
				<td showColumn="marriage">
<c:out value='${item.marriage}'/>&nbsp;				</td>
				<td showColumn="company">
<c:out value='${item.company}'/>&nbsp;				</td>
				<td showColumn="workGroupId">
<c:out value='${item.workGroupId}'/>&nbsp;				</td>
				<td showColumn="site">
<c:out value='${item.site}'/>&nbsp;				</td>
				<td showColumn="emailValid">
<c:out value='${item.emailValid}'/>&nbsp;				</td>
			</tr>
	</c:forEach>
		</tbody>
	</table>
	
<pg:pager
			items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}"
			isOffset="true"
			url="${CTX}/admin/huikang/doctor/do.jsp"
			export="currentPageNumber=pageNumber"
			scope="request">   
		  <pg:param name="range"/>
		  <pg:param name="maxIndexPages"/>
		  <pg:param name="method"/>
		  
		  <pg:param name="searchColumn"/>
		  <pg:param name="searchColumnValue"/>
		  
		   <pg:param name="userName"/>
		   <pg:param name="password"/>
		   <pg:param name="realName"/>
		   <pg:param name="birthday"/>
		   <pg:param name="sex"/>
		   <pg:param name="address"/>
		   <pg:param name="phone"/>
		   <pg:param name="mobile"/>
		   <pg:param name="email"/>
		   <pg:param name="mainType"/>
		   <pg:param name="nation"/>
		   <pg:param name="marriage"/>
		   <pg:param name="company"/>
		   <pg:param name="workGroupId"/>
		   <pg:param name="site"/>
		   <pg:param name="emailValid"/>
			<jsp:include page="/common/page/bar.jsp" flush="true"/>共有：<c:out value="${pagination.totalRecord}"/>条记录
		</pg:pager>
</form>

<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_doctor_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_doctor_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_doctor_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/doctor/do.jsp?method=form","<%=Doctor.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/doctor/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_doctor_page_form',form:'#huikang_doctor_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="base.jsp" %>