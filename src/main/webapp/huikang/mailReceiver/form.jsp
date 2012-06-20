<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="mailReceiver" class="com.up72.huikang.model.MailReceiver" scope="request" />
<%@include file="service.jsp" %>



<div class="pb_edit">
<form id="huikang_mailReceiver_edit_form" action="${CTX}/huikang/mailReceiver/do.jsp" method="post">
<input type="hidden" id="method" name="method" value="${MD_E}"/>

	<input type="hidden" id="id" name="id" value="${mailReceiver.id}"/>

<%//=$select("categoryId",$d.find("select id,name from Category"),String.valueOf(mailReceiver.getCategoryId()))%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pb_frm">
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=MailReceiver.ALIAS_MAIL_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${mailReceiver.mailId}" name="mailId" id="mailId" class="required email digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=MailReceiver.ALIAS_RECEIVE_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${mailReceiver.receiveId}" name="receiveId" id="receiveId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=MailReceiver.ALIAS_WORK_ORDER_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${mailReceiver.workOrderId}" name="workOrderId" id="workOrderId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=MailReceiver.ALIAS_RECEIVE_NAME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${mailReceiver.receiveName}" name="receiveName" id="receiveName" class="required  txt_ipt ipt_over" maxlength="50" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=MailReceiver.ALIAS_RECEIVE_MAIL%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${mailReceiver.receiveMail}" name="receiveMail" id="receiveMail" class="required email  txt_ipt ipt_over" maxlength="50" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=MailReceiver.ALIAS_RECEIVE_TYPE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${mailReceiver.receiveType}" name="receiveType" id="receiveType" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=MailReceiver.ALIAS_CREATE_TIME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${mailReceiver.createTimeString}" onclick="WdatePicker({dateFmt:'<%=MailReceiver.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required  txt_ipt ipt_over" />
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
		$("#huikang_mailReceiver_edit_form").validate({
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



