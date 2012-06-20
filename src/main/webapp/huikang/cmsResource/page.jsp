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
   <div class="navBar" style="display: none;"> » <a class="" href="${ctx}/admin/huikang/cmsResource/"><%=CmsResource.TABLE_ALIAS%>管理</a> </div>
  </div>
<!--end当前位置--> 

<!--搜索-->
	<div class="up72_search skin_search">
	<form id="huikang_cmsResource_search_form" name="huikang_cmsResource_search_form" method="get">
		<div class="up72_search_con">
				<div class="input_search_text"><%=CmsResource.ALIAS_CATEOGYR_ID%>：<input type="text" id="cateogyrId" name="cateogyrId" class="input_text" value="${query.cateogyrId}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_TITLE%>：<input type="text" id="title" name="title" class="input_text" value="${query.title}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_SUB_TITLE%>：<input type="text" id="subTitle" name="subTitle" class="input_text" value="${query.subTitle}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_KEY_WORD%>：<input type="text" id="keyWord" name="keyWord" class="input_text" value="${query.keyWord}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_AUTHOR%>：<input type="text" id="author" name="author" class="input_text" value="${query.author}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_SOURCE%>：<input type="text" id="source" name="source" class="input_text" value="${query.source}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_CONTENT%>：<input type="text" id="content" name="content" class="input_text" value="${query.content}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_IMG_NUM%>：<input type="text" id="imgNum" name="imgNum" class="input_text" value="${query.imgNum}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_VIEW_NUM%>：<input type="text" id="viewNum" name="viewNum" class="input_text" value="${query.viewNum}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_FILE_PATH%>：<input type="text" id="filePath" name="filePath" class="input_text" value="${query.filePath}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_IMG_PATH%>：<input type="text" id="imgPath" name="imgPath" class="input_text" value="${query.imgPath}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_ADD_TIME%>：<input type="text" id="addTime" name="addTime" class="input_text" value="${query.addTime}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_UPDATE_TIME%>：<input type="text" id="updateTime" name="updateTime" class="input_text" value="${query.updateTime}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_SORT%>：<input type="text" id="sort" name="sort" class="input_text" value="${query.sort}"></div>
				<div class="input_search_text"><%=CmsResource.ALIAS_CATEGORY_PATH%>：<input type="text" id="categoryPath" name="categoryPath" class="input_text" value="${query.categoryPath}"></div>
			<div class="input_search_button"><div class="input_button"><button name="btnU" type="submit" onclick="$(this).parents('form').submit();" class="button" value="搜索"><span>搜索</span></button></div></div>
		</div>
	</form>
	</div>
<!--end搜索-->

<form id="huikang_cmsResource_page_form" name="huikang_cmsResource_page_form" action="${CTX}/huikang/cmsResource/do.jsp?method=${MD_P}"   method="post">

<table id="huikang_cmsResource_table">
		<thead>
			<tr>
				<th showColumn="checkbox" width="25"><input type="checkbox" id="checkall" onclick="setAllCheckboxState('items',this.checked);" /></th>
				<th showColumn="index" width="20">序号</th>
				<th showColumn="option" width="30"><label>操作</label></th>
				<th sortColumn="cateogyr_id" showColumn="cateogyrId" width="50"><%=CmsResource.ALIAS_CATEOGYR_ID%></th>
				<th sortColumn="title" showColumn="title" width="50"><%=CmsResource.ALIAS_TITLE%></th>
				<th sortColumn="sub_title" showColumn="subTitle" width="50"><%=CmsResource.ALIAS_SUB_TITLE%></th>
				<th sortColumn="key_word" showColumn="keyWord" width="50"><%=CmsResource.ALIAS_KEY_WORD%></th>
				<th sortColumn="author" showColumn="author" width="50"><%=CmsResource.ALIAS_AUTHOR%></th>
				<th sortColumn="source" showColumn="source" width="50"><%=CmsResource.ALIAS_SOURCE%></th>
				<th sortColumn="content" showColumn="content" width="50"><%=CmsResource.ALIAS_CONTENT%></th>
				<th sortColumn="img_num" showColumn="imgNum" width="50"><%=CmsResource.ALIAS_IMG_NUM%></th>
				<th sortColumn="view_num" showColumn="viewNum" width="50"><%=CmsResource.ALIAS_VIEW_NUM%></th>
				<th sortColumn="file_path" showColumn="filePath" width="50"><%=CmsResource.ALIAS_FILE_PATH%></th>
				<th sortColumn="img_path" showColumn="imgPath" width="50"><%=CmsResource.ALIAS_IMG_PATH%></th>
				<th sortColumn="add_time" showColumn="addTime" width="50"><%=CmsResource.ALIAS_ADD_TIME%></th>
				<th sortColumn="update_time" showColumn="updateTime" width="50"><%=CmsResource.ALIAS_UPDATE_TIME%></th>
				<th sortColumn="sort" showColumn="sort" width="50"><%=CmsResource.ALIAS_SORT%></th>
				<th sortColumn="category_path" showColumn="categoryPath" width="50"><%=CmsResource.ALIAS_CATEGORY_PATH%></th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${items}" var="item" varStatus="status">
			<tr>
				<td showColumn="checkbox"><input type="checkbox" id="items" name="items" value="${item.id}" class="sel" tags="null"></td>
				<td showColumn="index">${page.thisPageFirstElementNumber + status.index}</td>
				<td showColumn="option"><a href="javascript:;"  onclick="show('${ctx}/huikang/cmsResource/${item.id}/edit','<%=CmsResource.TABLE_ALIAS%>',600)" class="sysiconBtnNoIcon">编辑</a>&nbsp;</td>
				<td showColumn="cateogyrId">
<c:out value='${item.cateogyrId}'/>&nbsp;				</td>
				<td showColumn="title">
<c:out value='${item.title}'/>&nbsp;				</td>
				<td showColumn="subTitle">
<c:out value='${item.subTitle}'/>&nbsp;				</td>
				<td showColumn="keyWord">
<c:out value='${item.keyWord}'/>&nbsp;				</td>
				<td showColumn="author">
<c:out value='${item.author}'/>&nbsp;				</td>
				<td showColumn="source">
<c:out value='${item.source}'/>&nbsp;				</td>
				<td showColumn="content">
<c:out value='${item.content}'/>&nbsp;				</td>
				<td showColumn="imgNum">
<c:out value='${item.imgNum}'/>&nbsp;				</td>
				<td showColumn="viewNum">
<c:out value='${item.viewNum}'/>&nbsp;				</td>
				<td showColumn="filePath">
<c:out value='${item.filePath}'/>&nbsp;				</td>
				<td showColumn="imgPath">
<c:out value='${item.imgPath}'/>&nbsp;				</td>
				<td showColumn="addTime">
<fmt:formatDate value="${item.addTimeDate}" pattern="yyyy-MM-dd"/>&nbsp;				</td>
				<td showColumn="updateTime">
<fmt:formatDate value="${item.updateTimeDate}" pattern="yyyy-MM-dd"/>&nbsp;				</td>
				<td showColumn="sort">
<c:out value='${item.sort}'/>&nbsp;				</td>
				<td showColumn="categoryPath">
<c:out value='${item.categoryPath}'/>&nbsp;				</td>
			</tr>
	</c:forEach>
		</tbody>
	</table>
	
<pg:pager
			items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}"
			isOffset="true"
			url="${CTX}/admin/huikang/cmsResource/do.jsp"
			export="currentPageNumber=pageNumber"
			scope="request">   
		  <pg:param name="range"/>
		  <pg:param name="maxIndexPages"/>
		  <pg:param name="method"/>
		  
		  <pg:param name="searchColumn"/>
		  <pg:param name="searchColumnValue"/>
		  
		   <pg:param name="cateogyrId"/>
		   <pg:param name="title"/>
		   <pg:param name="subTitle"/>
		   <pg:param name="keyWord"/>
		   <pg:param name="author"/>
		   <pg:param name="source"/>
		   <pg:param name="content"/>
		   <pg:param name="imgNum"/>
		   <pg:param name="viewNum"/>
		   <pg:param name="filePath"/>
		   <pg:param name="imgPath"/>
		   <pg:param name="addTime"/>
		   <pg:param name="updateTime"/>
		   <pg:param name="sort"/>
		   <pg:param name="categoryPath"/>
			<jsp:include page="/common/page/bar.jsp" flush="true"/>共有：<c:out value="${pagination.totalRecord}"/>条记录
		</pg:pager>
</form>

<script type="text/javascript">
	// 列选择显示处理
	$.showcolumn(${showColumn});
	// 排序处理
	$.sortcolumn({
		form : "#huikang_cmsResource_search_form",
		data : "pageNumber=${page.thisPageNumber}&pageSize=${page.pageSize}",
		columns : $("#huikang_cmsResource_table th[sortColumn]"),
		sortColumns : "${pageRequest.sortColumns}"
	});
	
	// 表格列表处理
	$('#huikang_cmsResource_table').flexigrid({
		height: 300,
		striped : true,
		buttons : [
			{name: "添加", bclass: "addorder", onpress : function(){show("${ctx}/huikang/cmsResource/do.jsp?method=form","<%=CmsResource.TABLE_ALIAS%>添加",600)}},
			{name: '删除', bclass: 'delete', onpress : function(){doRestEdit({confirmMsg:'确认删除选中的记录吗？',url:'${ctx}/huikang/cmsResource/do.jsp?method=del',batchBox:'items',boxCon:'#huikang_cmsResource_page_form',form:'#huikang_cmsResource_page_form',method:'delete'})}}
		]
	});
</script>
</up72:override>
<%@include file="base.jsp" %>