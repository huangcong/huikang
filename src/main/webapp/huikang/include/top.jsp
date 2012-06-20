<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<table width="725" border="0" align="center" cellpadding="0" cellspacing="0" style="background:url(images/info-b.jpg) bottom center no-repeat #a1c1d6;">
	<tr>
		<td width="622"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td width="12%" align="center" valign="top" style="padding-top:2px;"><img src="/images/photo-man.jpg" alt="" width="60" height="71"/></td>
				<td width="1%" valign="top">&nbsp;</td>
				<td valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="manage-table">
					<tr>
						<th width="16%">姓名：</th>
						<td width="40%">张三长 </td>
						<th width="14%">性别：</th>
						<td width="30%">男</td>
					</tr>
					<tr>
						<th>慢性病：</th>
						<td>高血压(8年)、糖尿病(2年)</td>
						<th>主治医生：</th>
						<td>胡医生</td>
					</tr>
					<tr>
						<td colspan="4" class="manage-table-open" ><div onclick="toggle('manage')"></div></td>
					</tr>
				</table></td>
			</tr>
		</table></td>
		<td width="108" valign="top"><div style="background:#eaf4fb; height:30px; line-height:30px; border-radius:5px; text-align:center; margin:4px 8px 0;"><span style="display:inline-block; padding:0 4px;"><strong><a href="javascript:;"  onclick="alert('取消工作单成功！');"><img src="/images/qux.jpg" alt="" title="取消工作单" /></a></strong></span><span style="display:inline-block; padding:0 4px;"><strong><a href="javascript:;" onclick="alert('关闭工作单成功！');"><img src="/images/guanb.jpg" alt="" title="关闭工作单成功" /></a></strong></span></div>
			<div style="background:#fff; height:30px; line-height:30px; border-radius:5px; text-align:center; margin:4px 8px 0;"><span style="display:inline-block; padding:0 4px;"><strong><a href="javascript:;" onclick="window.open('mailone.html','right');"><img src="/images/email.jpg" alt="" title="发邮件" /></a></strong></span><span style="display:inline-block; padding:0 4px;"><strong><a href="javascript:;" onclick="window.open('smsone.html','right');"><img src="/images/msg.jpg" alt="" title="发短信" /></a></strong></span></div></td>
	</tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td height="10"></td>
	</tr>
</table>
<table border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td align="center"><div class="br-blue" onclick="window.open('/huikang/emailBox/do.jsp?method=emailBox','right');"><img src="/images/01.jpg" title="慢病管理" /></div>
			<div class="br-blue" onclick="window.open('ordergany.html','right');"><img src="/images/02.jpg" title="预约干预" /></div>
			<div class="br-blue" onclick="window.open('yuxueyy.html','right');"><img src="/images/03.jpg" title="预约医院" /></div>
				<div class="br-blue" onclick="window.open('reports-man.html','right');"><img src="/images/06.jpg" title="健康报表" /></div></td>
	</tr>
	<tr>
		<td height="10"></td>
	</tr>
</table>