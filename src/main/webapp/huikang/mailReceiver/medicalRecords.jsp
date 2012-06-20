<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ include file="/common/taglibs.jsp"%>
<up72:override name="content">
	<link rel="stylesheet" type="text/css" href="css/css.css" />
	<!--[if !IE]>   jq库&    <![endif]-->
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/cut_over.js"></script>
	<script type="text/javascript" src="/js/show.js"></script>
	<script src="/js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
	<script>
change = function(id){
	for(var i=1;i < 5;i++){
		$('#info-' + i).hide();	
	}
	$('#info-' + id).show();
}
</script>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="left" class="seat">
				<span>当前位置：<a href="#">个人服务</a>&gt;慢病管理</span>
				<img src="/images/br-back.jpg" />
				<img src="/images/br-forward.jpg" />
			</td>
		</tr>
	</table>
	<table width="200" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height="10"></td>
		</tr>
	</table>
	<%@include file="/huikang/include/top.jsp"%>
	<table width="730" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td colspan="3">
				<div class="tab-big">
					<ul>
						<li class="tmhover" onclick="ShowSub(2,1)" id="S_Menu_21">
							电子档案
						</li>
						<li onclick="ShowSub(2,2)" id="S_Menu_22">
							健康管理
						</li>
					</ul>
				</div>
				<div id="S_Cont_21"">
					<div class="big_box_top">
						<span>综合电子档案</span>
					</div>
					<div class="big_box_m">
						<table width="96%" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td height="5" align="center"></td>
							</tr>
						</table>
						<table width="97%" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td valign="top">

									<table border="0" align="center" cellpadding="0"
										cellspacing="0" class="list-input-table" style="width: 700px">
										<tr>
											<td width="303" align="left">
												<img src="/images/c-g.jpg" alt="" />
												可靠数据
												<img src="/images/c-b.jpg" alt="" />
												参考数据
												<img src="/images/c-o.jpg" alt="" />
												隐私数据
											</td>
											<td width="97" align="right">
												请选择时间：
											</td>
											<td width="83" align="center" class="list-input">
												<input type="text" id="startDateStr" name="startDateStr" onFocus="WdatePicker({isShowWeek:true})" readonly="true" />
											</td>
											<td width="39">
												<img src="/images/list-data-input-br.jpg" alt=""  onclick="WdatePicker({isShowWeek:true,el:'startDateStr'});" />
											</td>
											<td width="30" align="center">
												至
											</td>
											<td width="83" align="center" class="list-input">
												<input type="text" id="endDateStr" name="endDateStr" onFocus="WdatePicker({isShowWeek:true})" readonly="true" />
											</td>
											<td width="39">
												<img src="/images/list-data-input-br.jpg" alt=""  onclick="WdatePicker({isShowWeek:true,el:'endDateStr'});"  />
											</td>
											<td width="6"></td>
										</tr>
									</table>
									<table border="0" align="center" cellpadding="0"
										cellspacing="0" class="manage-list" width="700">
										<tr>
											<th width="120">
												<span onclick="toggle('td1')" style="cursor: pointer;">2011/07/01-12/31</span>
											</th>
											<th width="40">
												1
											</th>
											<th width="40">
												2
											</th>
											<th width="40">
												3
											</th>
											<th width="40">
												4
											</th>
											<th width="40">
												5
											</th>
											<th width="40">
												6
											</th>
											<th width="40">
												7
											</th>
											<th width="40">
												8
											</th>
											<th width="40">
												9
											</th>
											<th width="40">
												10
											</th>
											<th width="40">
												11
											</th>
											<th width="40">
												12
											</th>
											<th width="40">
												13
											</th>
											<th width="40">
												14
											</th>
										</tr>
									</table>
									<table border="0" align="center" cellpadding="0"
										cellspacing="0" class="manage-list" width="700"
										style="display: block" id="td1">
										<tr>
											<td width="120">
												2011/11/10-12/31
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40" class="tdb tmhover" onclick="change('1');">
												<img src="/images/i-card--plus.gif" alt="" width="16"
													height="16" />
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40" class="tdg" onclick="change('4');">
												<img src="/images/i-flask--plus.gif" alt="" width="16"
													height="16" />
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40" class="tdb" onclick="change('2');">
												<img src="/images/i-image--plus.gif" alt="" width="16"
													height="16" />
											</td>
										</tr>
										<tr>
											<td width="120">
												2011/10/10-11/09
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40" class="tdb" onclick="change('2');">
												<img src="/images/i-clipboard--plus.gif" alt="" />
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												2011/09/16-10/11
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdo" onclick="change('3');">
												<span class="tdb"><img
														src="/images/i-image--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td class="tdb" onclick="change('4');">
												<span class="tdg"><img
														src="/images/i-flask--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdg tmhover" onclick="change('2');">
												<span class="tdb"><img src="/images/i-card--plus.gif"
														alt="" width="16" height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												2011/08/14-09/15
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdo" onclick="change('2');">
												<span class="tdb"><img
														src="/images/i-table--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdb" onclick="change('3');">
												<img src="/images/i-image--plus.gif" alt="" width="16"
													height="16" />
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												2011/07/12-08/13
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdg" onclick="change('1');">
												<span class="tdb"><img
														src="/images/i-image--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdo" onclick="change('4');">
												<span class="tdb"><img
														src="/images/i-table--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												2011/06/10-07/11
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdg" onclick="change('2');">
												<span class="tdb"><img
														src="/images/i-table--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
									</table>
									<table border="0" align="center" cellpadding="0"
										cellspacing="0" class="manage-list" width="700">
										<tr>
											<th width="120">
												<span onclick="toggle('td2')" style="cursor: pointer;">2011/01/01-06/31</span>
											</th>
											<th width="40">
												1
											</th>
											<th width="40">
												2
											</th>
											<th width="40">
												3
											</th>
											<th width="40">
												4
											</th>
											<th width="40">
												5
											</th>
											<th width="40">
												6
											</th>
											<th width="40">
												7
											</th>
											<th width="40">
												8
											</th>
											<th width="40">
												9
											</th>
											<th width="40">
												10
											</th>
											<th width="40">
												11
											</th>
											<th width="40">
												12
											</th>
											<th width="40">
												13
											</th>
											<th width="40">
												14
											</th>
										</tr>
									</table>
									<table border="0" align="center" cellpadding="0"
										cellspacing="0" class="manage-list" width="680"
										style="display: none;" id="td2">
										<tr>
											<td width="120">
												2011/06/10-06/31
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40" class="tdb tmhover" onclick="change('1');">
												<img src="/images/i-card--plus.gif" alt="" width="16"
													height="16" />
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40" class="tdg" onclick="change('4');">
												<img src="/images/i-flask--plus.gif" alt="" width="16"
													height="16" />
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40" class="tdb" onclick="change('2');">
												<img src="/images/i-image--plus.gif" alt="" width="16"
													height="16" />
											</td>
										</tr>
										<tr>
											<td width="120">
												2011/05/10-06/09
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40" class="tdb" onclick="change('2');">
												<img src="/images/i-clipboard--plus.gif" alt="" />
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												2011/04/16-05/11
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdo" onclick="change('3');">
												<span class="tdb"><img
														src="/images/i-image--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td class="tdb" onclick="change('4');">
												<span class="tdg"><img
														src="/images/i-flask--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdg tmhover" onclick="change('2');">
												<span class="tdb"><img src="/images/i-card--plus.gif"
														alt="" width="16" height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												2011/03/14-04/15
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdo" onclick="change('2');">
												<span class="tdb"><img
														src="/images/i-table--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdb" onclick="change('3');">
												<img src="/images/i-image--plus.gif" alt="" width="16"
													height="16" />
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												2011/02/12-03/13
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdg" onclick="change('1');">
												<span class="tdb"><img
														src="/images/i-image--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdo" onclick="change('4');">
												<span class="tdb"><img
														src="/images/i-table--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												2011/01/10-02/11
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdg" onclick="change('2');">
												<span class="tdb"><img
														src="/images/i-table--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
									</table>
									<table border="0" align="center" cellpadding="0"
										cellspacing="0" class="manage-list" width="700">
										<tr>
											<th width="120">
												<span onclick="toggle('td3')" style="cursor: pointer;">2010/07/01-12/31</span>
											</th>
											<th width="40">
												1
											</th>
											<th width="40">
												2
											</th>
											<th width="40">
												3
											</th>
											<th width="40">
												4
											</th>
											<th width="40">
												5
											</th>
											<th width="40">
												6
											</th>
											<th width="40">
												7
											</th>
											<th width="40">
												8
											</th>
											<th width="40">
												9
											</th>
											<th width="40">
												10
											</th>
											<th width="40">
												11
											</th>
											<th width="40">
												12
											</th>
											<th width="40">
												13
											</th>
											<th width="40">
												14
											</th>
										</tr>
									</table>
									<table border="0" align="center" cellpadding="0"
										cellspacing="0" class="manage-list" width="680"
										style="display: none;" id="td3">
										<tr>
											<td width="120">
												2011/06/10-06/31
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40" class="tdb tmhover" onclick="change('1');">
												<img src="/images/i-card--plus.gif" alt="" width="16"
													height="16" />
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40" class="tdg" onclick="change('4');">
												<img src="/images/i-flask--plus.gif" alt="" width="16"
													height="16" />
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40" class="tdb" onclick="change('2');">
												<img src="/images/i-image--plus.gif" alt="" width="16"
													height="16" />
											</td>
										</tr>
										<tr>
											<td width="120">
												2011/05/10-06/09
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40" class="tdb" onclick="change('2');">
												<img src="/images/i-clipboard--plus.gif" alt="" />
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
											<td width="40">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												2011/04/16-05/11
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdo" onclick="change('3');">
												<span class="tdb"><img
														src="/images/i-image--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td class="tdb" onclick="change('4');">
												<span class="tdg"><img
														src="/images/i-flask--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdg tmhover" onclick="change('2');">
												<span class="tdb"><img src="/images/i-card--plus.gif"
														alt="" width="16" height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												2011/03/14-04/15
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdo" onclick="change('2');">
												<span class="tdb"><img
														src="/images/i-table--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdb" onclick="change('3');">
												<img src="/images/i-image--plus.gif" alt="" width="16"
													height="16" />
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												2011/02/12-03/13
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdg" onclick="change('1');">
												<span class="tdb"><img
														src="/images/i-image--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdo" onclick="change('4');">
												<span class="tdb"><img
														src="/images/i-table--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												2011/01/10-02/11
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td class="tdg" onclick="change('2');">
												<span class="tdb"><img
														src="/images/i-table--plus.gif" alt="" width="16"
														height="16" /> </span>
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
											<td>
												&nbsp;
											</td>
										</tr>
									</table>
									<table border="0" align="center" cellpadding="0"
										cellspacing="0" class="manage-list" width="700">
										<tr>
											<th width="120">
												<span onclick="toggle('td4')" style="cursor: pointer;">2010/01/01-06/31</span>
											</th>
											<th width="40">
												1
											</th>
											<th width="40">
												2
											</th>
											<th width="40">
												3
											</th>
											<th width="40">
												4
											</th>
											<th width="40">
												5
											</th>
											<th width="40">
												6
											</th>
											<th width="40">
												7
											</th>
											<th width="40">
												8
											</th>
											<th width="40">
												9
											</th>
											<th width="40">
												10
											</th>
											<th width="40">
												11
											</th>
											<th width="40">
												12
											</th>
											<th width="40">
												13
											</th>
											<th width="40">
												14
											</th>
										</tr>
									</table>
									<table width="200" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td height="10"></td>
										</tr>
									</table>
									<table width="700" border="0" align="center" cellpadding="0"
										cellspacing="0" class="manage-list">
										<tr>
											<th align="left" style="font-weight: bold; text-align: left;">
												&nbsp;&nbsp;临床信息
											</th>
										</tr>
									</table>
									<table id="info-1" width="700" border="0" align="center"
										cellpadding="0" cellspacing="0" class="manage-list">
										<tr>
											<th width="15%">
												静脉血FBG：
											</th>
											<td width="10%">
												120mmol/L
											</td>
											<th width="15%">
												PBG2h：
											</th>
											<td width="10%">
												21mmol/L
											</td>
											<th width="15%">
												HbA1c：
											</th>
											<td width="10%">
												23%
											</td>
											<th width="15%">
												TG:
											</th>
											<td width="10%">
												56mmol/L
											</td>
										</tr>
										<tr>
											<th width="15%">
												TC：
											</th>
											<td width="10%">
												120mmol/L
											</td>
											<th width="15%">
												毛细血管FBG：
											</th>
											<td width="10%">
												21mmol/L
											</td>
											<th width="15%">
												毛细血管PBG2h：
											</th>
											<td width="10%">
												21mmol/L
											</td>
											<th width="15%">
												餐后2H抽血时间：
											</th>
											<td width="10%">
												20:00
											</td>
										</tr>
										<tr>
											<th width="15%">
												收缩压1：
											</th>
											<td width="10%">
												90mmHg
											</td>
											<th width="15%">
												舒张压1：
											</th>
											<td width="10%">
												110mmHg
											</td>
											<th width="15%">
												收缩压2：
											</th>
											<td width="10%">
												90mmHg
											</td>
											<th width="15%">
												舒张压2：
											</th>
											<td width="10%">
												110mmHg
											</td>
										</tr>
										<tr>
											<th width="15%">
												身高：
											</th>
											<td width="10%">
												170cm
											</td>
											<th width="15%">
												体重：
											</th>
											<td width="10%">
												80Kg
											</td>
											<th width="15%">
												腰围：
											</th>
											<td width="10%">
												160cm
											</td>
											<th width="15%">
												臀围：
											</th>
											<td width="10%">
												189cm
											</td>
										</tr>
										<tr>
											<th width="15%">
												左眼视力：
											</th>
											<td width="10%">
												1.0
											</td>
											<th width="15%">
												右眼视力：
											</th>
											<td width="10%">
												0.8
											</td>
											<th width="15%"></th>
											<td width="10%"></td>
											<th width="15%">
												最后更新日期：
											</th>
											<td width="10%">
												2012.04.05
											</td>
										</tr>
									</table>
									<table id="info-2" width="700" border="0" align="center"
										cellpadding="0" cellspacing="0" class="manage-list"
										style="display: none;">
										<tr>
											<th width="15%">
												TC：
											</th>
											<td width="10%">
												125mmol/L
											</td>
											<th width="15%">
												毛细血管FBG：
											</th>
											<td width="10%">
												25mmol/L
											</td>
											<th width="15%">
												毛细血管PBG2h：
											</th>
											<td width="10%">
												25mmol/L
											</td>
											<th width="15%">
												餐后2H抽血时间：
											</th>
											<td width="10%">
												20:00
											</td>
										</tr>
										<tr>
											<th width="15%">
												收缩压1：
											</th>
											<td width="10%">
												98mmHg
											</td>
											<th width="15%">
												舒张压1：
											</th>
											<td width="10%">
												100mmHg
											</td>
											<th width="15%">
												收缩压2：
											</th>
											<td width="10%">
												95mmHg
											</td>
											<th width="15%">
												舒张压2：
											</th>
											<td width="10%">
												120mmHg
											</td>
										</tr>
										<tr>
											<th width="15%">
												静脉血FBG：
											</th>
											<td width="10%">
												135mmol/L
											</td>
											<th width="15%">
												PBG2h：
											</th>
											<td width="10%">
												25mmol/L
											</td>
											<th width="15%">
												HbA1c：
											</th>
											<td width="10%">
												25%
											</td>
											<th width="15%">
												TG:
											</th>
											<td width="10%">
												56mmol/L
											</td>
										</tr>
										<tr>
											<th width="15%">
												身高：
											</th>
											<td width="10%">
												160cm
											</td>
											<th width="15%">
												体重：
											</th>
											<td width="10%">
												75Kg
											</td>
											<th width="15%">
												腰围：
											</th>
											<td width="10%">
												150cm
											</td>
											<th width="15%">
												臀围：
											</th>
											<td width="10%">
												175cm
											</td>
										</tr>
										<tr>
											<th width="15%">
												左眼视力：
											</th>
											<td width="10%">
												1.1
											</td>
											<th width="15%">
												右眼视力：
											</th>
											<td width="10%">
												1.2
											</td>
											<th width="15%"></th>
											<td width="10%"></td>
											<th width="15%">
												最后更新日期：
											</th>
											<td width="10%">
												2012.04.05
											</td>
										</tr>
									</table>
									<table id="info-3" width="700" border="0" align="center"
										cellpadding="0" cellspacing="0" class="manage-list"
										style="display: none;">
										<tr>
											<th width="15%">
												收缩压1：
											</th>
											<td width="10%">
												90mmHg
											</td>
											<th width="15%">
												舒张压1：
											</th>
											<td width="10%">
												116mmHg
											</td>
											<th width="15%">
												收缩压2：
											</th>
											<td width="10%">
												95mmHg
											</td>
											<th width="15%">
												舒张压2：
											</th>
											<td width="10%">
												110mmHg
											</td>
										</tr>
										<tr>
											<th width="15%">
												静脉血FBG：
											</th>
											<td width="10%">
												120mmol/L
											</td>
											<th width="15%">
												PBG2h：
											</th>
											<td width="10%">
												26mmol/L
											</td>
											<th width="15%">
												HbA1c：
											</th>
											<td width="10%">
												28%
											</td>
											<th width="15%">
												TG:
											</th>
											<td width="10%">
												56mmol/L
											</td>
										</tr>
										<tr>
											<th width="15%">
												身高：
											</th>
											<td width="10%">
												170cm
											</td>
											<th width="15%">
												体重：
											</th>
											<td width="10%">
												80Kg
											</td>
											<th width="15%">
												腰围：
											</th>
											<td width="10%">
												160cm
											</td>
											<th width="15%">
												臀围：
											</th>
											<td width="10%">
												189cm
											</td>
										</tr>
										<tr>
											<th width="15%">
												TC：
											</th>
											<td width="10%">
												120mmol/L
											</td>
											<th width="15%">
												毛细血管FBG：
											</th>
											<td width="10%">
												26mmol/L
											</td>
											<th width="15%">
												毛细血管PBG2h：
											</th>
											<td width="10%">
												24mmol/L
											</td>
											<th width="15%">
												餐后2H抽血时间：
											</th>
											<td width="10%">
												21:00
											</td>
										</tr>
										<tr>
											<th width="15%">
												左眼视力：
											</th>
											<td width="10%">
												1.0
											</td>
											<th width="15%">
												右眼视力：
											</th>
											<td width="10%">
												0.8
											</td>
											<th width="15%"></th>
											<td width="10%"></td>
											<th width="15%">
												最后更新日期：
											</th>
											<td width="10%">
												2012.01.04
											</td>
										</tr>
									</table>
									<table id="info-4" width="700" border="0" align="center"
										cellpadding="0" cellspacing="0" class="manage-list"
										style="display: none;">
										<tr>
											<th width="15%">
												身高：
											</th>
											<td width="10%">
												140cm
											</td>
											<th width="15%">
												体重：
											</th>
											<td width="10%">
												50Kg
											</td>
											<th width="15%">
												腰围：
											</th>
											<td width="10%">
												120cm
											</td>
											<th width="15%">
												臀围：
											</th>
											<td width="10%">
												130cm
											</td>
										</tr>
										<tr>
											<th width="15%">
												TC：
											</th>
											<td width="10%">
												110mmol/L
											</td>
											<th width="15%">
												毛细血管FBG：
											</th>
											<td width="10%">
												11mmol/L
											</td>
											<th width="15%">
												毛细血管PBG2h：
											</th>
											<td width="10%">
												11mmol/L
											</td>
											<th width="15%">
												餐后2H抽血时间：
											</th>
											<td width="10%">
												10:00
											</td>
										</tr>
										<tr>
											<th width="15%">
												收缩压1：
											</th>
											<td width="10%">
												32mmHg
											</td>
											<th width="15%">
												舒张压1：
											</th>
											<td width="10%">
												140mmHg
											</td>
											<th width="15%">
												收缩压2：
											</th>
											<td width="10%">
												96mmHg
											</td>
											<th width="15%">
												舒张压2：
											</th>
											<td width="10%">
												110mmHg
											</td>
										</tr>
										<tr>
											<th width="15%">
												静脉血FBG：
											</th>
											<td width="10%">
												110mmol/L
											</td>
											<th width="15%">
												PBG2h：
											</th>
											<td width="10%">
												11mmol/L
											</td>
											<th width="15%">
												HbA1c：
											</th>
											<td width="10%">
												13%
											</td>
											<th width="15%">
												TG:
											</th>
											<td width="10%">
												16mmol/L
											</td>
										</tr>
										<tr>
											<th width="15%">
												左眼视力：
											</th>
											<td width="10%">
												1.5
											</td>
											<th width="15%">
												右眼视力：
											</th>
											<td width="10%">
												1.8
											</td>
											<th width="15%"></th>
											<td width="10%"></td>
											<th width="15%">
												最后更新日期：
											</th>
											<td width="10%">
												2012.03.02
											</td>
										</tr>
									</table>

								</td>

							</tr>
							<tr>
								<td height="10">
									<div id="manage"
										style="position: absolute; left: 5px; top: 110px; display: none;">
										<table width="730" border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td>
													<div id="S_Cont_21">
														<div class="big_box_top">
															<span>患者信息</span><a onclick="$('#manage').toggle();">X</a>
														</div>
														<div class="big_box_m">
															<table border="0" align="center" cellpadding="0"
																cellspacing="0">
																<tr>
																	<td height="10"></td>
																</tr>
																<tr>
																	<td align="center">
																		<div class="br-blue"
																			onclick="window.open('info-add.html','right');">
																			<span><strong><img
																						src="/images/br-pen.gif"
																						style="vertical-align: middle;" />编辑</strong>
																			</span>
																		</div>
																		<div class="br-blue"
																			onclick="window.open('info-research1.html','right');">
																			<span><strong><img
																						src="/images/br-sc.gif"
																						style="vertical-align: middle;" />健康调查</strong>
																			</span>
																		</div>
																		<div class="br-blue"
																			onclick="window.open('info-research2.html','right');">
																			<span><strong><img
																						src="/images/br-sc.gif"
																						style="vertical-align: middle;" />服务评估</strong>
																			</span>
																		</div>
																	</td>
																</tr>

															</table>
															<table width="96%" border="0" align="center"
																cellpadding="0" cellspacing="0">
																<tr>
																	<td align="left"
																		style="height: 6px; border-bottom: 1px #999999 dotted;"></td>
																</tr>
																<tr>
																	<td align="left"
																		style="height: 24px; line-height: 24px; color: #666666;">
																		[患者基本信息]
																	</td>
																</tr>
																<tr>
																	<td align="left"
																		style="height: 6px; border-top: 1px #999999 dotted;"></td>
																</tr>
															</table>
															<table width="96%" border="0" align="center"
																cellpadding="0" cellspacing="0">
																<tr>
																	<td width="80%" valign="top">
																		<table border="0" align="center" cellpadding="0"
																			cellspacing="0" class="info-table">
																			<tr>
																				<th width="95" align="center">
																					医保号:
																				</th>
																				<td align="center">
																					212313444111111
																				</td>
																				<th align="center">
																					姓名:
																				</th>
																				<td align="center">
																					张三长
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					出生年月:
																				</th>
																				<td width="185" align="center">
																					1970年10月20日
																				</td>
																				<th width="95" align="center">
																					性别:
																				</th>
																				<td width="185" align="center">
																					男
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					地址:
																				</th>
																				<td width="185" align="center">
																					中国上海徐汇区
																				</td>
																				<th width="95" align="center">
																					邮编:
																				</th>
																				<td width="185" align="center">
																					200030
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					家庭电话:
																				</th>
																				<td width="185" align="center">
																					43215678
																				</td>
																				<th width="95" align="center">
																					手机:
																				</th>
																				<td width="185" align="center">
																					13455556666
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					学历:
																				</th>
																				<td width="185" align="center">
																					大专及以上
																				</td>
																				<th width="95" align="center">
																					月收入(元):
																				</th>
																				<td width="185" align="center">
																					5000
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					民族:
																				</th>
																				<td width="185" align="center">
																					汉族
																				</td>
																				<th width="95" align="center">
																					婚姻:
																				</th>
																				<td width="185" align="center">
																					已婚
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					糖尿病确诊:
																				</th>
																				<td width="185" align="center">
																					2010年5月
																				</td>
																				<th width="95" align="center">
																					糖尿病类型:
																				</th>
																				<td width="185" align="center">
																					2型
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					糖尿病确诊地点:
																				</th>
																				<td width="185" align="center">
																					三级医院
																				</td>
																				<th width="95" align="center">
																					糖尿病家族史:
																				</th>
																				<td width="185" align="center">
																					有
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					所属站点:
																				</th>
																				<td width="185" align="center">
																					南园
																				</td>
																				<th width="95" align="center">
																					负责社区医生:
																				</th>
																				<td width="185" align="center">
																					李医生、张医生、王医生
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					退出或终止项目:
																				</th>
																				<td width="185" align="center">
																					2011年11月
																				</td>
																				<th width="95" align="center">
																					原应:
																				</th>
																				<td width="185" align="center">
																					不祥
																				</td>
																			</tr>
																		</table>
																	</td>
																	<td width="20%" align="center" valign="top">
																		<img src="/images/photo-man.jpg" width="121"
																			height="154" />
																	</td>
																</tr>
															</table>
															<table width="96%" border="0" align="center"
																cellpadding="0" cellspacing="0">
																<tr>
																	<td align="left"
																		style="height: 6px; border-bottom: 1px #999999 dotted;"></td>
																</tr>
																<tr>
																	<td align="left"
																		style="height: 24px; line-height: 24px; color: #666666;">
																		[历史问卷调查]
																	</td>
																</tr>
																<tr>
																	<td align="left"
																		style="height: 6px; border-top: 1px #999999 dotted;"></td>
																</tr>
															</table>
															<table width="96%" border="0" align="center"
																cellpadding="0" cellspacing="0">
																<tr>
																	<td align="left" valign="top">
																		<table width="96%" border="0" align="left"
																			cellpadding="0" cellspacing="0" class="info-table">
																			<tr>
																				<th width="95" align="center">
																					2011.11.01
																				</th>
																				<td width="578" align="center">
																					<a href="info-research1.html">健康调查</a> /
																					<a href="info-research2.html">服务评估</a>
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					2011.06.02
																				</th>
																				<td align="center">
																					<a href="info-research1.html">健康调查</a> /
																					<a href="info-research2.html">服务评估</a>
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					2010.11.02
																				</th>
																				<td align="center">
																					<a href="info-research1.html">健康调查</a> /
																					<a href="info-research2.html">服务评估</a>
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					2010.06.02
																				</th>
																				<td align="center">
																					<a href="info-research1.html">健康调查</a> /
																					<a href="info-research2.html">服务评估</a>
																				</td>
																			</tr>
																			<tr>
																				<th width="95" align="center">
																					2009.11.02
																				</th>
																				<td align="center">
																					<a href="info-research1.html">健康调查</a> /
																					<a href="info-research2.html">服务评估</a>
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
															</table>
														</div>
														<div class="big_box_foot"></div>
													</div>
													<div id="S_Cont_22" style="display: none;">
														<div class="big_box_top">
															<span>企业健康统计</span>
														</div>
														<div class="big_box_m">
															<table width="96%" border="0" align="center"
																cellpadding="0" cellspacing="0">
																<tr>
																	<td height="10"></td>
																</tr>
																<tr>
																	<td height="5" align="center">
																		<table width="98%" border="0" align="center"
																			cellpadding="0" cellspacing="0" class="work-list">
																			<tr>
																				<th width="6%">
																					&nbsp;
																				</th>
																				<th width="44%">
																					企业名称
																				</th>
																				<th width="6%">
																					&nbsp;
																				</th>
																				<th width="44%">
																					企业名称
																				</th>
																			</tr>
																			<tr>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					上海普之康佳园科技有限公司
																				</td>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					麒麟鲲鹏（中国）生物药业有限公司
																				</td>
																			</tr>
																			<tr>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					上海迪赛诺医药发展有限公司
																				</td>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					上海三共制药有限公司
																				</td>
																			</tr>
																			<tr>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					上海迪赛诺生物医药有限公司
																				</td>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					上海天士力药业有限公司
																				</td>
																			</tr>
																			<tr>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					上海罗氏制药有限公司
																				</td>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					锐迪科微电子（上海）有限公司
																				</td>
																			</tr>
																			<tr>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					中芯国际集成电路制造（上海）有限公司
																				</td>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					威宇科技测试封装有限公司
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td height="10"></td>
																</tr>
																<tr>
																	<td height="10">
																		<table width="96%" border="0" align="center"
																			cellpadding="0" cellspacing="0">
																			<tr>
																				<td width="25%">
																					企业糖尿病人健康指标统计
																				</td>
																				<td width="56%">
																					&nbsp;
																				</td>
																				<td width="11%">
																					<select name="select2" id="select">
																						<option>
																							糖尿病
																						</option>
																						<option>
																							冠心病
																						</option>
																						<option>
																							高血压
																						</option>
																					</select>
																				</td>
																				<td width="8%">
																					<input type="submit" name="button" id="button"
																						value="统计" />
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td height="5" align="center">
																		<img src="/images/pic_06.gif" />
																	</td>
																</tr>
															</table>
														</div>
														<div class="big_box_foot"></div>
													</div>
													<div id="S_Cont_23" style="display: none;">
														<div class="big_box_top">
															<span>医院健康统计</span>
														</div>
														<div class="big_box_m">
															<table width="96%" border="0" align="center"
																cellpadding="0" cellspacing="0">
																<tr>
																	<td height="10"></td>
																</tr>
																<tr>
																	<td height="5" align="center">
																		<table width="98%" border="0" align="center"
																			cellpadding="0" cellspacing="0" class="work-list">
																			<tr>
																				<th width="6%">
																					&nbsp;
																				</th>
																				<th width="44%">
																					医院名称
																				</th>
																				<th width="6%">
																					&nbsp;
																				</th>
																				<th width="44%">
																					医院名称
																				</th>
																			</tr>
																			<tr>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					<a title="上海市仁和医院"
																						href="http://yiyuan.39world.com/shanghai/124758.html">上海市仁和医院</a>
																				</td>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					<ul>
																						<li></li>
																					</ul>
																					<ul>
																						<li>
																							<a title="上海市中冶集团职工医院"
																								href="http://yiyuan.39world.com/shanghai/124755.html">上海市中冶集团职工医院</a>
																						</li>
																					</ul>
																				</td>
																			</tr>
																			<tr>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					<a
																						href="s?wd=%C9%CF%BA%A3%CE%E4%BE%AF%D7%DC%B6%D3%D2%BD%D4%BA&amp;rsp=1&amp;oq=%C9%CF%BA%A3%D2%BD%D4%BA%B4%F3%C8%AB&amp;f=1&amp;rsv_ers=xn0&amp;rs_src=0">上海武警总队医院</a>
																				</td>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					上海华山医院
																				</td>
																			</tr>
																			<tr>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					上海瑞金医院
																				</td>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					第九人民医院
																				</td>
																			</tr>
																			<tr>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					上海曙光医院
																				</td>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					第六人民医院
																				</td>
																			</tr>
																			<tr>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					上海长征医院
																				</td>
																				<td align="center">
																					<input type="checkbox" name="checkbox"
																						id="checkbox" />
																				</td>
																				<td>
																					上海交通大学附属第一人民医院
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td height="10"></td>
																</tr>
																<tr>
																	<td height="10">
																		<table width="96%" border="0" align="center"
																			cellpadding="0" cellspacing="0">
																			<tr>
																				<td width="25%">
																					医院糖尿病人健康指标统计
																				</td>
																				<td width="56%">
																					&nbsp;
																				</td>
																				<td width="11%">
																					<select name="select2" id="select">
																						<option>
																							糖尿病
																						</option>
																						<option>
																							冠心病
																						</option>
																						<option>
																							高血压
																						</option>
																					</select>
																				</td>
																				<td width="8%">
																					<input type="submit" name="button" id="button"
																						value="统计" />
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td height="5" align="center">
																		<img src="/images/pic_06.gif" />
																	</td>
																</tr>
															</table>
														</div>
														<div class="big_box_foot"></div>
													</div>
												</td>
											</tr>
										</table>
									</div>

									</up72:override>
									<%@include file="/huikang/common.jsp"%>
									<script type="text/javascript">
current_memu(2);
</script>