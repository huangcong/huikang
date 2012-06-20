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
			<a class="" href="${ctx}/admin/huikang/cmsCategory/"><%=CmsCategory.TABLE_ALIAS%>管理</a>
		</div>
	</div>
	<!--end当前位置-->

	<!--搜索-->
	<div class="up72_search skin_search">
		<form id="huikang_cmsCategory_search_form"
			name="huikang_cmsCategory_search_form" method="get">
			<div class="up72_search_con">
				<div class="input_search_text"><%=CmsCategory.ALIAS_CMS_CATEGORY_ID%>：
					<input type="text" id="cmsCategoryId" name="cmsCategoryId"
						class="input_text" value="${query.cmsCategoryId}">
				</div>
				<div class="input_search_text"><%=CmsCategory.ALIAS_ROOT_CATEGORY_ID%>：
					<input type="text" id="rootCategoryId" name="rootCategoryId"
						class="input_text" value="${query.rootCategoryId}">
				</div>
				<div class="input_search_text"><%=CmsCategory.ALIAS_NAME%>：
					<input type="text" id="name" name="name" class="input_text"
						value="${query.name}">
				</div>
				<div class="input_search_text"><%=CmsCategory.ALIAS_IMG_PATH%>：
					<input type="text" id="imgPath" name="imgPath" class="input_text"
						value="${query.imgPath}">
				</div>
				<div class="input_search_text"><%=CmsCategory.ALIAS_DESCRIPTION%>：
					<input type="text" id="description" name="description"
						class="input_text" value="${query.description}">
				</div>
				<div class="input_search_text"><%=CmsCategory.ALIAS_PATH%>：
					<input type="text" id="path" name="path" class="input_text"
						value="${query.path}">
				</div>
				<div class="input_search_text"><%=CmsCategory.ALIAS_LEVEL%>：
					<input type="text" id="level" name="level" class="input_text"
						value="${query.level}">
				</div>
				<div class="input_search_text"><%=CmsCategory.ALIAS_ENABLE%>：
					<input type="text" id="enable" name="enable" class="input_text"
						value="${query.enable}">
				</div>
				<div class="input_search_text"><%=CmsCategory.ALIAS_SORT%>：
					<input type="text" id="sort" name="sort" class="input_text"
						value="${query.sort}">
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

	<form id="huikang_cmsCategory_page_form"
		name="huikang_cmsCategory_page_form"
		action="${CTX}/huikang/cmsCategory/do.jsp?method=${MD_P}"
		method="post">

		<table id="huikang_cmsCategory_table">
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
					<th sortColumn="cms_category_id" showColumn="cmsCategoryId"
						width="50"><%=CmsCategory.ALIAS_CMS_CATEGORY_ID%></th>
					<th sortColumn="root_category_id" showColumn="rootCategoryId"
						width="50"><%=CmsCategory.ALIAS_ROOT_CATEGORY_ID%></th>
					<th sortColumn="name" showColumn="name" width="50"><%=CmsCategory.ALIAS_NAME%></th>
					<th sortColumn="img_path" showColumn="imgPath" width="50"><%=CmsCategory.ALIAS_IMG_PATH%></th>
					<th sortColumn="description" showColumn="description" width="50"><%=CmsCategory.ALIAS_DESCRIPTION%></th>
					<th sortColumn="path" showColumn="path" width="50"><%=CmsCategory.ALIAS_PATH%></th>
					<th sortColumn="level" showColumn="level" width="50"><%=CmsCategory.ALIAS_LEVEL%></th>
					<th sortColumn="enable" showColumn="enable" width="50"><%=CmsCategory.ALIAS_ENABLE%></th>
					<th sortColumn="sort" showColumn="sort" width="50"><%=CmsCategory.ALIAS_SORT%></th>
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
								onclick="show('${ctx}/huikang/cmsCategory/${item.id}/edit','<%=CmsCategory.TABLE_ALIAS%>',600)"
								class="sysiconBtnNoIcon">编辑</a>&nbsp;
						</td>
						<td showColumn="cmsCategoryId">
							<c:out value='${item.cmsCategoryId}' />
							&nbsp;
						</td>
						<td showColumn="rootCategoryId">
							<c:out value='${item.rootCategoryId}' />
							&nbsp;
						</td>
						<td showColumn="name">
							<c:out value='${item.name}' />
							&nbsp;
						</td>
						<td showColumn="imgPath">
							<c:out value='${item.imgPath}' />
							&nbsp;
						</td>
						<td showColumn="description">
							<c:out value='${item.description}' />
							&nbsp;
						</td>
						<td showColumn="path">
							<c:out value='${item.path}' />
							&nbsp;
						</td>
						<td showColumn="level">
							<c:out value='${item.level}' />
							&nbsp;
						</td>
						<td showColumn="enable">
							<c:out value='${item.enable}' />
							&nbsp;
						</td>
						<td showColumn="sort">
							<c:out value='${item.sort}' />
							&nbsp;
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<pg:pager items="${pagination.totalRecord}"
			maxPageItems="${pagination.range}"
			maxIndexPages="${pagination.maxIndexPages}" isOffset="true"
			url="${CTX}/admin/huikang/cmsCategory/do.jsp"
			export="currentPageNumber=pageNumber" scope="request">
			<pg:param name="range" />
			<pg:param name="maxIndexPages" />
			<pg:param name="method" />

			<pg:param name="searchColumn" />
			<pg:param name="searchColumnValue" />

			<pg:param name="cmsCategoryId" />
			<pg:param name="rootCategoryId" />
			<pg:param name="name" />
			<pg:param name="imgPath" />
			<pg:param name="description" />
			<pg:param name="path" />
			<pg:param name="level" />
			<pg:param name="enable" />
			<pg:param name="sort" />
			<jsp:include page="/common/page/bar.jsp" flush="true" />共有：<c:out
				value="${pagination.totalRecord}" />条记录
		</pg:pager>
	</form>
</up72:override>
<%@include file="../common.jsp"%>
<script type="text/javascript">
current_memu(1);
</script>