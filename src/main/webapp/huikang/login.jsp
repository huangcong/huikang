<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>天伦房产管理平台登录</title>
<script src="<c:url value="/scripts/jquery.js"/>" type="text/javascript"></script>
<script src="<c:url value="/scripts/validate/jquery.validate.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/scripts/validate/messages_cn.js"/>" type="text/javascript"></script>
<script src="<c:url value="/scripts/validate/jquery.metadata.js"/>" type="text/javascript"></script>
<script src="<c:url value="/images/flash.js"/>" type="text/javascript"></script>
<style type="text/css">
<!--
body { margin:0px; padding:0px; color:#cddb6a; font-family:"宋体"; background:#3e6c14 url(/images/lbg.jpg) left center repeat-x; }
form{ padding:0px; margin:0px; }
.login { position:absolute; z-index:100px; width:100%; height:100%; left:0; top:0; }
.flash{ width:1004px; height:620px; overflow:hidden; position:relative; }
table.Manager{ margin-top:50px; margin-left:430px; _margin-left:280px; }
td.input{ font-size:12px; }
td.input input.text{ height:25px; line-height:23px; width:200px; border:0px; font-weight:bold; font-family:Verdana; }
td.input img{ cursor:pointer; height:22px; vertical-align:middle; margin-bottom:5px; }
td.caption{ text-align:right; width:100px; height:45px; font-size:14px; }
td.button input { font-size:14px; font-weight:bold; cursor:pointer; border:none; width:84px; height:33px; line-height:33px; color:#FFFFFF; }
/*input*/
.input_out{ background:#b0c92a; }
.input_on{background:#ebff00; }
.input_off{ background:#b0c92a; }
.input_move{ background:#ebff00; }
/*button*/
.but_off{ background:url(/images/cz.gif) no-repeat; }
.but_out{ background:url(/images/cz.gif) no-repeat; }
.but_move { background:url(/images/dl.gif) no-repeat; }
.error{ padding-left:5px; };
-->
</style>
</head>

<body onLoad="nameFocus();">
<form id="pages_txgc_teacherInfo_form" name="pages_txgc_teacherInfo_form" method="post" action="${ctx}/pages/doLogin.jsp">
	<input type="hidden" name="_method" value="post" />
	<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td align="center" valign="middle"><div class="flash"> 
					<script language="JavaScript" type="text/javascript">
						writeFlashHTML("_swf=/images/loginbg.swf", "_width=1004", "_height=620" ,"_wmode=transparent");
					</script>
					<div class="login">
						<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td align="center"><table height="86" align="center" width="430" border="0" cellpadding="0" cellspacing="0" class="Manager">
										<tr>
											<td class="caption"></td>
											<td class="input">
												<c:if test="${flash.error != null}">
													${flash.error}
												</c:if>
											</td>
										</tr>
										<tr>
											<td class="caption">用户名：</td>
											<td class="input"><input name="userName" id="userName" type="text" class="text input_out {required:true,messages:{required:'用户名不能为空！'}}" tabIndex="1" value='' /></td>
										</tr>
										<tr>
											<td class="caption">密　码：</td>
											<td class="input"><input name="password" id="password" class="text input_out {required:true,messages:{required:'密码不能为空！'}}" type="password" tabIndex="2" value='' /></td>
										</tr>
										<tr>
											<td class="caption">角　色：</td>
											<td class="input">
												<input type="hidden" name="code" id="code" value="0" checked="checked"/>
												系统管理员</td>
										</tr>
										<tr>
											<td height="40">&nbsp;</td>
											<td valign="bottom" class="button"><input name="button" type="submit" tabIndex="4" value="登 录" class="but_off" onMouseMove="this.className='but_move'" onMouseOut="this.className='but_out'"/>
												&nbsp;&nbsp;
												<input name="Input" type="reset" value="重 置" class="but_off" onClick="nameGetFocus();"  tabIndex="5" onMouseMove="this.className='but_move'" onMouseOut="this.className='but_out'"/></td>
										</tr>
									</table></td>
							</tr>
						</table>
					</div>
				</div></td>
		</tr>
	</table>
</form>
<script language="javascript" type="text/javascript">
$("#pages_txgc_teacherInfo_form").validate();
function nameFocus(){
	var name = document.getElementById('userName');
	setTimeout(function(){name.focus();},0);
}
$(".text").each(function(){
	$(this).bind('mouseenter mouseleave', function(){
  		$(this).toggleClass('input_move');
	});
});
</script>
</body>
</html>
