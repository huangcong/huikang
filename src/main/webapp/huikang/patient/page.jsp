<%@page import="com.up72.huikang.model.*" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<up72:override name="content">
<!--当前位置-->
  <div class="head_content">
   <div class="navBar" style="display: none;"> » <a class="" href="${ctx}/admin/huikang/patient/"><%=Patient.TABLE_ALIAS%>管理</a> </div>
  </div>
<!--end当前位置--> 

<!--搜索-->
	<div class="up72_search skin_search">
	<form id="huikang_patient_search_form" name="huikang_patient_search_form" method="get">
		<div class="up72_search_con">
				<div class="input_search_text"><%=Patient.ALIAS_CODE%>：<input type="text" id="code" name="code" class="input_text" value="${query.code}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_NAME%>：<input type="text" id="name" name="name" class="input_text" value="${query.name}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_BIRTHDAY%>：<input type="text" id="birthday" name="birthday" class="input_text" value="${query.birthday}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_SEX%>：<input type="text" id="sex" name="sex" class="input_text" value="${query.sex}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_ADDRESS%>：<input type="text" id="address" name="address" class="input_text" value="${query.address}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_ZIP_CODE%>：<input type="text" id="zipCode" name="zipCode" class="input_text" value="${query.zipCode}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_DEGREE%>：<input type="text" id="degree" name="degree" class="input_text" value="${query.degree}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_PHONE%>：<input type="text" id="phone" name="phone" class="input_text" value="${query.phone}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_MOBILE%>：<input type="text" id="mobile" name="mobile" class="input_text" value="${query.mobile}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_EMAIL%>：<input type="text" id="email" name="email" class="input_text" value="${query.email}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_MAIN_TYPE%>：<input type="text" id="mainType" name="mainType" class="input_text" value="${query.mainType}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_NATION%>：<input type="text" id="nation" name="nation" class="input_text" value="${query.nation}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_MARRIAGE%>：<input type="text" id="marriage" name="marriage" class="input_text" value="${query.marriage}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_COMPANY%>：<input type="text" id="company" name="company" class="input_text" value="${query.company}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_CONTACTER1%>：<input type="text" id="contacter1" name="contacter1" class="input_text" value="${query.contacter1}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_CONTACTER2%>：<input type="text" id="contacter2" name="contacter2" class="input_text" value="${query.contacter2}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_SOURCE%>：<input type="text" id="source" name="source" class="input_text" value="${query.source}"></div>
				<div class="input_search_text"><%=Patient.ALIAS_REMARK%>：<input type="text" id="remark" name="remark" class="input_text" value="${query.remark}"></div>
			<div class="input_search_button"><div class="input_button"><button name="btnU" type="submit" onclick="$(this).parents('form').submit();" class="button" value="搜索"><span>搜索</span></button></div></div>
		</div>
	</form>
	</div>
<!--end搜索-->

<form id="huikang_patient_page_form" name="huikang_patient_page_form" action="${CTX}/huikang/patient/do.jsp?method=${MD_P}"   method="post">

<table id="huikang_patient_table">
		<thead>
			<tr>
				<th showColumn="checkbox" width="25"><input type="checkbox" id="checkall" onclick="setAllCheckboxState('items',this.checked);" /></th>
				<th showColumn="index" width="20">序号</th>
				<th showColumn="option" width="30"><label>操作</label></th>
				<th sortColumn="code" showColumn="code" width="50"><%=Patient.ALIAS_CODE%></th>
				<th sortColumn="name" showColumn="name" width="50"><%=Patient.ALIAS_NAME%></th>
				<th sortColumn="birthday" showColumn="birthday" width="50"><%=Patient.ALIAS_BIRTHDAY%></th>
				<th sortColumn="sex" showColumn="sex" width="50"><%=Patient.ALIAS_SEX%></th>
				<th sortColumn="address" showColumn="address" width="50"><%=Patient.ALIAS_ADDRESS%></th>
				<th sortColumn="zip_code" showColumn="zipCode" width="50"><%=Patient.ALIAS_ZIP_CODE%></th>
				<th sortColumn="degree" showColumn="degree" width="50"><%=Patient.ALIAS_DEGREE%></th>
				<th sortColumn="phone" showColumn="phone" width="50"><%=Patient.ALIAS_PHONE%></th>
				<th sortColumn="mobile" showColumn="mobile" width="50"><%=Patient.ALIAS_MOBILE%></th>
				<th sortColumn="email" showColumn="email" width="50"><%=Patient.ALIAS_EMAIL%></th>
				<th sortColumn="main_type" showColumn="mainType" width="50"><%=Patient.ALIAS_MAIN_TYPE%></th>
				<th sortColumn="nation" showColumn="nation" width="50"><%=Patient.ALIAS_NATION%></th>
				<th sortColumn="marriage" showColumn="marriage" width="50"><%=Patient.ALIAS_MARRIAGE%></th>
				<th sortColumn="company" showColumn="company" width="50"><%=Patient.ALIAS_COMPANY%></th>
				<th sortColumn="contacter1" showColumn="contacter1" width="50"><%=Patient.ALIAS_CONTACTER1%></th>
				<th sortColumn="contacter2" showColumn="contacter2" width="50"><%=Patient.ALIAS_CONTACTER2%></th>
				<th sortColumn="source" showColumn="source" width="50"><%=Patient.ALIAS_SOURCE%></th>
				<th sortColumn="remark" showColumn="remark" width="50"><%=Patient.ALIAS_REMARK%></th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${items}" var="item" varStatus="status">
			<tr>
				<td showColumn="checkbox"><input type="checkbox" id="items" name="items" value="${item.id}" class="sel" tags="null"></td>
				<td showColumn="index">${page.thisPageFirstElementNumber + status.index}</td>
				<td showColumn="option"><a href="javascript:;"  onclick="show('${ctx}/huikang/patient/${item.id}/edit','<%=Patient.TABLE_ALIAS%>',600)" class="sysiconBtnNoIcon">编辑</a>&nbsp;</td>
				<td showColumn="code">
<c:out value='${item.code}'/>&nbsp;				</td>
				<td showColumn="name">
<c:out value='${item.name}'/>&nbsp;				</td>
				<td showColumn="birthday">
<c:out value='${item.birthday}'/>&nbsp;				</td>
				<td showColumn="sex">
<c:out value='${item.sex}'/>&nbsp;				</td>
				<td showColumn="address">
<c:out value='${item.address}'/>&nbsp;				</td>
				<td showColumn="zipCode">
<c:out value='${item.zipCode}'/>&nbsp;				</td>
				<td showColumn="degree">
<c:out value='${item.degree}'/>&nbsp;				</td>
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
				<td showColumn="contacter1">
<c:out value='${item.contacter1}'/>&nbsp;				</td>
				<td showColumn="contacter2">
<c:out value='${item.contacter2}'/>&nbsp;				</td>
				<td showColumn="source">
<c:out value='${item.source}'/>&nbsp;				</td>
				<td showColumn="remark">
<c:out value='${item.remark}'/>&nbsp;				</td>
			</tr>
	</c:forEach>
		</tbody>
	</table>
	
<pg:pager
			items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}"
			isOffset="true"
			url="${CTX}/admin/huikang/patient/do.jsp"
			export="currentPageNumber=pageNumber"
			scope="request">   
		  <pg:param name="range"/>
		  <pg:param name="maxIndexPages"/>
		  <pg:param name="method"/>
		  
		  <pg:param name="searchColumn"/>
		  <pg:param name="searchColumnValue"/>
		  
		   <pg:param name="code"/>
		   <pg:param name="name"/>
		   <pg:param name="birthday"/>
		   <pg:param name="sex"/>
		   <pg:param name="address"/>
		   <pg:param name="zipCode"/>
		   <pg:param name="degree"/>
		   <pg:param name="phone"/>
		   <pg:param name="mobile"/>
		   <pg:param name="email"/>
		   <pg:param name="mainType"/>
		   <pg:param name="nation"/>
		   <pg:param name="marriage"/>
		   <pg:param name="company"/>
		   <pg:param name="contacter1"/>
		   <pg:param name="contacter2"/>
		   <pg:param name="source"/>
		   <pg:param name="remark"/>
			<jsp:include page="/common/page/bar.jsp" flush="true"/>共有：<c:out value="${pagination.totalRecord}"/>条记录
		</pg:pager>
</form>

<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_patient_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_patient_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_patient_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/patient/do.jsp?method=form","<%=Patient.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/patient/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_patient_page_form',form:'#huikang_patient_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="../common.jsp" %>
<script type="text/javascript">
current_memu(6);
</script>