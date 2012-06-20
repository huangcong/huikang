<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/base.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
		<title>汇康一号管理系统</title>
		<link type="text/css" rel="stylesheet" href="/css/css.css" />
		<script type="text/javascript" src="/js/jquery.min.js"></script>
		<script type="text/javascript" src="/js/cut_over.js"></script>
		<script type="text/javascript" src="/js/show.js"></script>
		<!--[if IE 6]>
		<script type="text/javascript" src="js/iepng.js"></script>
		<script type="text/javascript" src="js/iepng_fix.js"></script>
		<![endif]-->
		<up72:block name="head" />
	</head>
	<body style="background: #e6f2fe;">
		<div
			style="width: 990px; height: 100%; margin: 0px auto; position: relative;">
			<div
				style="width: 131px; background: #FFF; border: #999 1px solid; z-index: 998; position: absolute; left: 708px; top: 44px; display: none;"
				id="panel">
				<ul class="xiala">
					<li onclick="toggle('panel')">
						慢性胃病
					</li>
					<li onclick="toggle('panel')">
						冠心病
					</li>
					<li onclick="toggle('panel')">
						糖尿病
					</li>
					<li onclick="toggle('panel')">
						高血压
					</li>
				</ul>
			</div>
			<table width="990" border="0" align="center" cellpadding="0"
				cellspacing="0" style="margin-top: 2px;">
				<tr>
					<td colspan="2" valign="middle"
						style="height: 50px; background: url(/images/top-b.jpg) top repeat-x;">
						<table width="98%" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td width="6%" align="center">
									<img src="/images/photo.jpg"
										style="width: 44px; height: 44px; border: 1px solid #a7cde7;" />
								</td>
								<td width="34%">
									<table width="98%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td colspan="4"
												style="font-size: 12px; color: #d4ff97; height: 16px; line-height: 16px; text-align: left;">
												14-Feb.-2012 22:12
											</td>
										</tr>
										<tr>
											<td width="34%"
												style="font-size: 14px; color: #fff; height: 24px; line-height: 24px; text-align: left;">
												晚上好 李小梅
											</td>
											<td width="27%">
												<div
													style="width: 78px; height: 22px; background: url(/images/ms-b.png) top center no-repeat; font-size: 12px; color: #ff4200; text-align: center; vertical-align: top;">
													新消息1条
												</div>
											</td>
											<td width="18%" class="top_set">
												<img src="/images/set-br.png" width="14" height="14"
													style="vertical-align: text-bottom;" />
												<a href="#">设置</a>
											</td>
											<td width="21%" class="top_set">
												<img src="/images/out-br.png" width="14" height="14"
													style="vertical-align: text-bottom;" />
												<a href="#">退出</a>
											</td>
										</tr>
									</table>
								</td>
								<td valign="bottom">
									<table width="98%" border="0" cellspacing="0" cellpadding="0"
										style="margin-bottom: 2px;">
										<tr>
											<td width="75" align="right"
												style="color: #FFF; font-size: 14px;">
												搜索
												<img src="/images/fdj-br.png" width="16" height="16"
													style="vertical-align: text-bottom;" />
											</td>
											<td width="223" align="center"
												style="width: 223px; height: 30px; background: url(/images/top-input.png) center top no-repeat;">
												<input type="text" name="textfield" id="textfield"
													style="background: none; border: none; height: 28px; width: 212px;" />
											</td>
											<td width="12">
												&nbsp;
											</td>
											<td width="108" align="center"
												style="background: url(/images/top-input2.png) center no-repeat;">
												<input name="textfield" type="text" id="textfield"
													style="background: none; border: none; height: 28px; width: 100px; color: #4695cd; font-size: 14px; text-indent: 10px;"
													value="关键字" />
											</td>
											<td width="27">
												<img src="/images/top-input3.png" width="27" height="30"
													onclick="toggle('panel')" />
											</td>
											<td width="10">
												&nbsp;
											</td>
											<td width="29">
												<img src="/images/top-go.png" width="29" height="29" />
											</td>
											<td width="87" align="center">
												<a href="adsearch.html" target="right"><img
														src="/images/top-ad.png" width="62" height="20" /> </a>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="top"
						style="height: 750px; width: 234px; background: url(/images/left-b.jpg) top;">
						<table width="232" border="0" align="left" cellpadding="0"
							cellspacing="0">
							<tr>
								<td align="center" style="height: 175px;">
									<img src="/images/left-pic1.jpg" width="228" height="173" />
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
							</tr>
							<tr>
								<td>
									<ul class="left_menu">
										<li class="" id="S_Menu_11">
											<a href="/pages/huikang/news.jsp">首页</a>
										</li>
										<li class="" id="S_Menu_12">
											<a href="/huikang/workOrder/do.jsp?method=workList&type=1">工作安排</a>
										</li>
										<li id="S_Menu_13">
											<a href="/huikang/schedule/do.jsp?method=page">日程计划</a>
										</li>
										<li id="S_Menu_14">
											<a href="/huikang/emailBox/do.jsp?method=page">邮件处理</a>
										</li>
										<li id="S_Menu_18">
											<a href="/huikang/smsBox/do.jsp?method=page">短信处理</a>
										</li>
										<li id="S_Menu_19">
											<a href="/huikang/patient/do.jsp?method=page">患者查询</a>
										</li>
										<li id="S_Menu_15">
											<a href="/huikang/emailBox/do.jsp?method=page">患者服务</a>
										</li>
										<li id="S_Menu_16">
											绩效评估
										</li>
										<li id="S_Menu_17">
											统计报表
										</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td>
									<img src="/images/left-line.jpg" width="229" height="2" />
								</td>
							</tr>
							<tr>
								<td style="height: 12px;"></td>
							</tr>
							<tr>
								<td>
									<ul class="left_menu">
										<li>
											系统管理
										</li>
									</ul>
									<ul class="left_menu2">
										<li id="S_Menu_113">
											<a href="#">数据导入</a>
										</li>
										<li id="S_Menu_114">
											<a href="/huikang/dictionary/do.jsp?method=page">数据字典</a>
										</li>
										<li id="S_Menu_115">
											<a href="#">工作分配</a>
										</li>
									</ul>
								</td>
							</tr>
						</table>
					</td>
					<td valign="top"
						style="height: 750px; width: 756px; background: #FFFFFF;">
						<up72:block name="content" />
					</td>
				</tr>
				<tr>
					<td colspan="2"
						style="background: #337baf; height: 20px; line-height: 20px; color: #FFF; text-align: center;">
						上海普之康佳园科技有限公司(版权)
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>