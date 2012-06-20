<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="template" class="com.up72.huikang.model.Template" scope="request" />
<%@include file="service.jsp" %>



<div class="pb_edit">
<form id="huikang_template_edit_form" action="${CTX}/huikang/template/do.jsp" method="post">
<input type="hidden" id="method" name="method" value="${MD_E}"/>

	<input type="hidden" id="id" name="id" value="${template.id}"/>

<%//=$select("categoryId",$d.find("select id,name from Category"),String.valueOf(template.getCategoryId()))%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pb_frm">
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Template.ALIAS_NAME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${template.name}" name="name" id="name" class="required  txt_ipt ipt_over" maxlength="200" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Template.ALIAS_CONTENT%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${template.content}" name="content" id="content" class="required  txt_ipt ipt_over" maxlength="2147483647" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Template.ALIAS_MODELS%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${template.models}" name="models" id="models" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Template.ALIAS_TYPE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${template.type}" name="type" id="type" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Template.ALIAS_ENABLE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${template.enable}" name="enable" id="enable" class="required digits  txt_ipt ipt_over" maxlength="3" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Template.ALIAS_CREATE_TIME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${template.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Template.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required  txt_ipt ipt_over" />
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
		$("#huikang_template_edit_form").validate({
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



