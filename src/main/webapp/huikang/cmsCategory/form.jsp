<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.up72.huikang.model.CmsCategory"%>
<jsp:useBean id="cmsCategory" class="com.up72.huikang.model.CmsCategory"
	scope="request" />
<%@include file="service.jsp"%>
<up72:override name="content">
<div class="pb_edit">
	<form id="huikang_cmsCategory_edit_form"
		action="${CTX}/huikang/cmsCategory/do.jsp" method="post">
		<input type="hidden" id="method" name="method" value="${MD_E}" />

		<input type="hidden" id="id" name="id" value="${cmsCategory.id}" />

		<table width="100%" border="0" cellspacing="0" cellpadding="0"
			class="pb_frm">
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=CmsCategory.ALIAS_CMS_CATEGORY_ID%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${cmsCategory.cmsCategoryId}" name="cmsCategoryId"
						id="cmsCategoryId" class="required digits  txt_ipt ipt_over"
						maxlength="19" />
					<span class="required">*</span>
				</td>
			</tr>
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=CmsCategory.ALIAS_ROOT_CATEGORY_ID%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${cmsCategory.rootCategoryId}" name="rootCategoryId"
						id="rootCategoryId" class="required digits  txt_ipt ipt_over"
						maxlength="19" />
					<span class="required">*</span>
				</td>
			</tr>
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=CmsCategory.ALIAS_NAME%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${cmsCategory.name}" name="name" id="name"
						class="required  txt_ipt ipt_over" maxlength="200" />
					<span class="required">*</span>
				</td>
			</tr>
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=CmsCategory.ALIAS_IMG_PATH%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${cmsCategory.imgPath}" name="imgPath" id="imgPath"
						class="required  txt_ipt ipt_over" maxlength="500" />
					<span class="required">*</span>
				</td>
			</tr>
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=CmsCategory.ALIAS_DESCRIPTION%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${cmsCategory.description}" name="description"
						id="description" class="required  txt_ipt ipt_over"
						maxlength="65535" />
					<span class="required">*</span>
				</td>
			</tr>
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=CmsCategory.ALIAS_PATH%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${cmsCategory.path}" name="path" id="path"
						class="required  txt_ipt ipt_over" maxlength="500" />
					<span class="required">*</span>
				</td>
			</tr>
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=CmsCategory.ALIAS_LEVEL%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${cmsCategory.level}" name="level" id="level"
						class="required digits  txt_ipt ipt_over" maxlength="10" />
					<span class="required">*</span>
				</td>
			</tr>
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=CmsCategory.ALIAS_ENABLE%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${cmsCategory.enable}" name="enable" id="enable"
						class="required digits  txt_ipt ipt_over" maxlength="3" />
					<span class="required">*</span>
				</td>
			</tr>
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=CmsCategory.ALIAS_SORT%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${cmsCategory.sort}" name="sort" id="sort"
						class="required digits  txt_ipt ipt_over" maxlength="10" />
					<span class="required">*</span>
				</td>
			</tr>
		</table>

		<div class="pb_sub">
			<div class="btn btn_sub" title="提交">
				<input id="submitButton" name="submitButton" type="submit"
					value="提交" />
			</div>
			<div class="btn btn_cel" title="重 置">
				<input type="reset" id="reset_button" value="重 置" />
			</div>
			<div class="btn btn_cel" title="关 闭">
				<input type="button" id="reset_button" value="关 闭"
					onclick="closeBox();" />
			</div>
		</div>
	</form>
</div>
</up72:override>
<%@include file="../common.jsp"%>
<script type="text/javascript">
current_memu(1);
</script>