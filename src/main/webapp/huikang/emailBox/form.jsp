<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="emailBox" class="com.up72.huikang.model.EmailBox" scope="request" />
<%@include file="service.jsp" %>



<div class="pb_edit">
<form id="huikang_emailBox_edit_form" action="${CTX}/huikang/emailBox/do.jsp" method="post">
<input type="hidden" id="method" name="method" value="${MD_E}"/>

	<input type="hidden" id="id" name="id" value="${emailBox.id}"/>

<%//=$select("categoryId",$d.find("select id,name from Category"),String.valueOf(emailBox.getCategoryId()))%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pb_frm">
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=EmailBox.ALIAS_SEND_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${emailBox.sendId}" name="sendId" id="sendId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=EmailBox.ALIAS_SEND_EMAIL%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${emailBox.sendEmail}" name="sendEmail" id="sendEmail" class="required email  txt_ipt ipt_over" maxlength="100" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=EmailBox.ALIAS_TITLE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${emailBox.title}" name="title" id="title" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=EmailBox.ALIAS_TEMPLATE_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${emailBox.templateId}" name="templateId" id="templateId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=EmailBox.ALIAS_TEMPLATE_MODEL%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${emailBox.templateModel}" name="templateModel" id="templateModel" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=EmailBox.ALIAS_CONTENT%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${emailBox.content}" name="content" id="content" class="required  txt_ipt ipt_over" maxlength="2147483647" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=EmailBox.ALIAS_FILES%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${emailBox.files}" name="files" id="files" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=EmailBox.ALIAS_TYPE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${emailBox.type}" name="type" id="type" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=EmailBox.ALIAS_DELETED%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${emailBox.deleted}" name="deleted" id="deleted" class="required digits  txt_ipt ipt_over" maxlength="3" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=EmailBox.ALIAS_SEND_TIME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${emailBox.sendTimeString}" onclick="WdatePicker({dateFmt:'<%=EmailBox.FORMAT_SEND_TIME%>'})" id="sendTimeString" name="sendTimeString"  maxlength="0" class="required  txt_ipt ipt_over" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=EmailBox.ALIAS_RESULT%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${emailBox.result}" name="result" id="result" class="required digits  txt_ipt ipt_over" maxlength="10" />
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
		$("#huikang_emailBox_edit_form").validate({
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



