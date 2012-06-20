<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="cmsResource" class="com.up72.huikang.model.CmsResource" scope="request" />
<%@include file="service.jsp" %>



<div class="pb_edit">
<form id="huikang_cmsResource_edit_form" action="${CTX}/huikang/cmsResource/do.jsp" method="post">
<input type="hidden" id="method" name="method" value="${MD_E}"/>

	<input type="hidden" id="id" name="id" value="${cmsResource.id}"/>

<%//=$select("categoryId",$d.find("select id,name from Category"),String.valueOf(cmsResource.getCategoryId()))%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pb_frm">
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_CATEOGYR_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.cateogyrId}" name="cateogyrId" id="cateogyrId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_TITLE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.title}" name="title" id="title" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_SUB_TITLE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.subTitle}" name="subTitle" id="subTitle" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_KEY_WORD%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.keyWord}" name="keyWord" id="keyWord" class="required  txt_ipt ipt_over" maxlength="1000" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_AUTHOR%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.author}" name="author" id="author" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_SOURCE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.source}" name="source" id="source" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_CONTENT%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.content}" name="content" id="content" class="required  txt_ipt ipt_over" maxlength="2147483647" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_IMG_NUM%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.imgNum}" name="imgNum" id="imgNum" class="required digits  txt_ipt ipt_over" maxlength="10" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_VIEW_NUM%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.viewNum}" name="viewNum" id="viewNum" class="required digits  txt_ipt ipt_over" maxlength="10" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_FILE_PATH%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.filePath}" name="filePath" id="filePath" class="required  txt_ipt ipt_over" maxlength="255" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_IMG_PATH%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.imgPath}" name="imgPath" id="imgPath" class="required  txt_ipt ipt_over" maxlength="255" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_ADD_TIME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.addTimeString}" onclick="WdatePicker({dateFmt:'<%=CmsResource.FORMAT_ADD_TIME%>'})" id="addTimeString" name="addTimeString"  maxlength="0" class="required  txt_ipt ipt_over" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_UPDATE_TIME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.updateTimeString}" onclick="WdatePicker({dateFmt:'<%=CmsResource.FORMAT_UPDATE_TIME%>'})" id="updateTimeString" name="updateTimeString"  maxlength="0" class="required  txt_ipt ipt_over" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_SORT%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.sort}" name="sort" id="sort" class="required digits  txt_ipt ipt_over" maxlength="10" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=CmsResource.ALIAS_CATEGORY_PATH%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${cmsResource.categoryPath}" name="categoryPath" id="categoryPath" class="required  txt_ipt ipt_over" maxlength="255" />
		<span class="required">*</span>
		</td>
	</tr>	
</table>

<div class="pb_sub">
	<div class="btn btn_sub" title="提交">
		<input id="submitButton" name="submitButton" type="submit" value="提交" />
	</div>
	<div class="btn btn_cel" title="重 置">
		<input type="reset" id="reset_button" value="重 置" />
	</div>
	<div class="btn btn_cel" title="关 闭">
		<input type="button" id="reset_button" value="关 闭" onclick="closeBox();" />
	</div>
</div>
</form>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$("#huikang_cmsResource_edit_form").validate({
				/*
				// ajax提交方式
				submitHandler:function(form){   
					form.submit();
				},
				*/
				errorPlacement: function(error, element) {
					error.appendTo(element.parent());
				}
		});	
	});
</script>



