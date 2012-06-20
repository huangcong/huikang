<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/common/taglibs.jsp"%>
<up72:override name="content">
	<script src="/js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
	<script type="text/javascript">

function getParentEl(){
	target=parent.document.getElementById("img1");
	if (target.style.display=="block"){
                 target.style.display="none";
             } else {
                 target.style.display="block";
             }
}
function getParentEe(){
	target=parent.document.getElementById("img2");
	if (target.style.display=="block"){
                 target.style.display="none";
             } else {
                 target.style.display="block";
             }
}</script>
	<!--[if IE 6]>
<script src="js/iepng.js" type="text/javascript"></script>
<script src="js/iepng_fix.js" type="text/javascript"></script>
<![endif]-->
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="left" class="seat">
				<span>当前位置：<a href="#">个人服务</a>&gt;慢病管理</span>
				<img src="/imagess/br-back.jpg" />
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
						<li onclick="ShowSub(2,1)" id="S_Menu_21">
							电子档案
						</li>
						<li class="tmhover" onclick="ShowSub(2,2)" id="S_Menu_22">
							健康管理
						</li>
					</ul>
				</div>
				<div id="S_Cont_22">
					<div class="big_box_top">
						<span>健康管理目标</span>
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
										cellspacing="0" class="list-input-table" style="width: 680px">
										<tr>
											<td width="303" align="left">
												<img src="/images/c-g1.jpg" />
												达标
												<img src="/images/c-r.jpg" />
												未达标
											</td>
											<td width="97" align="right">
												请选择时间：
											</td>
											<td width="83" align="center" class="list-input">
												<input type="text" id="startDateStr" value="${nowTime }"
													name="startDateStr" class="Wdate"
													onFocus="WdatePicker({isShowWeek:true})" readonly="true" />
											</td>
											<td width="39">
												<img src="/images/list-data-input-br.jpg"
													onclick="WdatePicker({isShowWeek:true,el:'startDateStr'});" />
											</td>
											<td width="30" align="center">
												至
											</td>
											<td width="83" align="center" class="list-input">
												<input type="text" id="endDateStr" value="${nowTime }"
													name="endDateStr" onFocus="WdatePicker({isShowWeek:true})"
													readonly="true" />
											</td>
											<td width="39">
												<img src="/images/list-data-input-br.jpg"
													onclick="WdatePicker({isShowWeek:true,el:'endDateStr'});" />
											</td>
											<td width="20">
												<a href="javascript:;"  style="cursor: pointer;">
													查&nbsp;询
												</a>
											</td>
											<td width="6"></td>
										</tr>
									</table>
									<table border="0" align="center" cellpadding="0"
										cellspacing="0" class="manage-list" width="680">
										<tr>
											<th width="140">
												<span onclick="toggle('td1')" style="cursor: pointer;">2011/07/01-12/31</span>
											</th>
											<c:forEach items="${dictionaryList}" var="item">
												<th width="90">
													${item.name }
												</th>
											</c:forEach>
										</tr>
									</table>
									<table border="0" align="center" cellpadding="0"
										cellspacing="0" class="manage-list" width="680"
										style="display: block" id="td1">
										<c:forEach items="${healthRecordList}" var="healthRecord">
											<tr>
											<td width="140" onclick="showHealthProject(${healthRecord.id })" style="cursor: pointer;">
												<input type="hidden" id="id" name="id" value="${healthRecord.id }" />
												${healthRecord.formatbBeginDate}
												-
												${healthRecord.formatbEndDate}
											</td>
											<c:forEach items="${dictionaryList}" var="dic">
											    <c:set var="refCode" value="${dic.refCode}"/>
											    <c:set var="currentPro" value="${healthRecord.itemMap[refCode]}" />
												<c:if test="${currentPro != null}">
													<c:if test="${currentPro.result ==0 }">
														<td width="90" class="tdg1"  onclick="doEdit(${currentPro.id },${currentPro.result })">
															${currentPro.confidence}
														</td>
													</c:if>
													<c:if test="${currentPro.result ==1 }">
														<td width="90" class="tdr" onclick="doEdit(${currentPro.id },${currentPro.result })">
															${currentPro.confidence}
														</td>
													</c:if>
												</c:if>
												<c:if test="${currentPro == null}">
													<td width="90">
													</td>
												</c:if>
											</c:forEach>
										</tr>
										</c:forEach>
									</table>

								</td>

							</tr>
							<tr>
								<td height="10"></td>
							</tr>
						</table>
						<div id="health_record_div">
						<form name="health_record_form" id="health_record_form" method="post" action="/huikang/healthRecord/do.jsp?method=save" onsubmit="return onSubmit();">
							<table border="0" align="center" cellpadding="0" cellspacing="0"
								class="list-input-table" style="width: 680px">
								
								<tr>
									<td width="303" align="left">
										新增健康管理记录
									</td>
									<td width="97" align="right">
										请选择时间：
									</td>
									<td width="83" align="center" class="list-input">
										<input type="text" id="startDateStr1" value="${nowTime }"
											name="startDateStr1"
											onFocus="WdatePicker({isShowWeek:true,el:'startDateStr1'})"
											readonly="true" />
									</td>
									<td width="39">
										<img src="/images/list-data-input-br.jpg"
											onclick="WdatePicker({isShowWeek:true,el:'startDateStr1'});" />
									</td>
									<td width="30" align="center">
										至
									</td>
									<td width="83" align="center" class="list-input">
										<input type="text" id="endDateStr1" value="${nowTime }"
											name="endDateStr1"
											onFocus="WdatePicker({isShowWeek:true,el:'endDateStr1'})"
											readonly="true" />
									</td>
									<td width="39">
										<img src="/images/list-data-input-br.jpg"
											onclick="WdatePicker({isShowWeek:true,el:'endDateStr1'});" />
									</td>
									<td width="6"></td>
								</tr>
							</table>
							<table width="96%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td align="center">
										<table width="98%" border="0" align="center" cellpadding="0"
											cellspacing="0" class="work-list">
											<tr>
												<th width="6%">
													<a href=javascript:; onclick="onClickAll()">全选</a>
												</th>
												<th width="9%">
													项目
												</th>
												<th width="14%">
													在哪进行
												</th>
												<th width="12%">
													频率
												</th>
												<th width="13%">
													多少量
												</th>
												<th width="27%">
													您有多少信心
													<span onclick="alert('信心低于7分，请调整设置！')"
														style="color: #FF0; cursor: pointer;">注意</span>
												</th>
											</tr>
											<c:forEach items="${dictionaryList}" var="item">
												<tr>
													<td align="center">
														<input type="checkbox" name="checkboxList" id="checkboxList"
															value="${item.refCode }" />
															<input type="hidden" name="${item.refCode }_sort" id="${item.refCode }_sort" value="${item.sort }">
													</td>
													<td>
														${item.name }
													</td>
													<td>
														<input name="${item.refCode }_place" type="text" id="${item.refCode }_place"
															size="8" />
													</td>
													<td>
														<select name="${item.refCode }_frequency" id="${item.refCode }_frequency">
															<option selected="selected" value="0">
																每日
															</option>
															<option value="1">
																每餐
															</option>
															<option value="2">
																每周
															</option>
															<option value="3">
																每两周
															</option>
														</select>
													</td>
													<td>
														<input name="${item.refCode }_dose" type="text" id="${item.refCode }_dose"
															size="8" />
													</td>
													<td>
														<input type="radio" name="${item.refCode }_confidence" id="${item.refCode }_confidence" value="7" />
														7分
														<input type="radio" name="${item.refCode }_confidence" id="${item.refCode }_confidence" value="8" />
														8分
														<input type="radio" name="${item.refCode }_confidence" id="${item.refCode }_confidence" value="9" />
														9分
														<input type="radio" name="${item.refCode }_confidence" id="${item.refCode }_confidence" value="10" />
														10分
													</td>
												</tr>
											</c:forEach>
											
										</table>
									</td>
								</tr>
								<tr>
									<td>
										<table border="0" align="center" cellpadding="0"
											cellspacing="0">
											<tr>
												<td height="10"></td>
											</tr>
											<tr>
												<td align="center">
													<div class="br-blue">
														<a href="javascript:;" onclick="checkSubmit()"><span><strong><img
																		src="/images/br-ok.gif"
																		style="vertical-align: middle;" />确认</strong> </span> </a>
													</div>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</form></div>
					</div>
					<div class="big_box_foot"></div>
				</div>
			</td>
		</tr>
	</table>
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
							<table border="0" align="center" cellpadding="0" cellspacing="0">
								<tr>
									<td height="10"></td>
								</tr>
								<tr>
									<td align="center">
										<div class="br-blue"
											onclick="window.open('info-add.html','right');">
											<span><strong><img src="/images/br-pen.gif"
														style="vertical-align: middle;" />编辑</strong> </span>
										</div>
										<div class="br-blue"
											onclick="window.open('info-research1.html','right');">
											<span><strong><img src="/images/br-sc.gif"
														style="vertical-align: middle;" />健康调查</strong> </span>
										</div>
										<div class="br-blue"
											onclick="window.open('info-research2.html','right');">
											<span><strong><img src="/images/br-sc.gif"
														style="vertical-align: middle;" />服务评估</strong> </span>
										</div>
									</td>
								</tr>

							</table>
							<table width="96%" border="0" align="center" cellpadding="0"
								cellspacing="0">
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
							<table width="96%" border="0" align="center" cellpadding="0"
								cellspacing="0">
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
										<img src="/images/photo-man.jpg" width="121" height="154" />
									</td>
								</tr>
							</table>
							<table width="96%" border="0" align="center" cellpadding="0"
								cellspacing="0">
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
							<table width="96%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td align="left" valign="top">
										<table width="96%" border="0" align="left" cellpadding="0"
											cellspacing="0" class="info-table">
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
							<table width="96%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="10"></td>
								</tr>
								<tr>
									<td height="5" align="center">
										<table width="98%" border="0" align="center" cellpadding="0"
											cellspacing="0" class="work-list">
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
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													上海普之康佳园科技有限公司
												</td>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													麒麟鲲鹏（中国）生物药业有限公司
												</td>
											</tr>
											<tr>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													上海迪赛诺医药发展有限公司
												</td>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													上海三共制药有限公司
												</td>
											</tr>
											<tr>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													上海迪赛诺生物医药有限公司
												</td>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													上海天士力药业有限公司
												</td>
											</tr>
											<tr>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													上海罗氏制药有限公司
												</td>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													锐迪科微电子（上海）有限公司
												</td>
											</tr>
											<tr>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													中芯国际集成电路制造（上海）有限公司
												</td>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
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
										<table width="96%" border="0" align="center" cellpadding="0"
											cellspacing="0">
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
													<input type="submit" name="button" id="button" value="统计" />
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
							<table width="96%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="10"></td>
								</tr>
								<tr>
									<td height="5" align="center">
										<table width="98%" border="0" align="center" cellpadding="0"
											cellspacing="0" class="work-list">
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
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													<a title="上海市仁和医院"
														href="http://yiyuan.39world.com/shanghai/124758.html">上海市仁和医院</a>
												</td>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
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
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													<a
														href="s?wd=%C9%CF%BA%A3%CE%E4%BE%AF%D7%DC%B6%D3%D2%BD%D4%BA&amp;rsp=1&amp;oq=%C9%CF%BA%A3%D2%BD%D4%BA%B4%F3%C8%AB&amp;f=1&amp;rsv_ers=xn0&amp;rs_src=0">上海武警总队医院</a>
												</td>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													上海华山医院
												</td>
											</tr>
											<tr>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													上海瑞金医院
												</td>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													第九人民医院
												</td>
											</tr>
											<tr>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													上海曙光医院
												</td>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													第六人民医院
												</td>
											</tr>
											<tr>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
												</td>
												<td>
													上海长征医院
												</td>
												<td align="center">
													<input type="checkbox" name="checkbox" id="checkbox" />
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
										<table width="96%" border="0" align="center" cellpadding="0"
											cellspacing="0">
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
													<input type="submit" name="button" id="button" value="统计" />
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
		<script>
		function doEdit(id,result){
			$.ajax({
				url : "/huikang/healthRecord/do.jsp",
				type : "post",
				data : "method=editHealthProject&id="+id+"&result="+result,
				dataType : "text",
				success : function(resultCode){
					resultCode = $.trim(resultCode);
				}	
			});
		}
$('#td1 td').bind("click", function(){
	var widht = $(this).attr("width");	
	var clazz = $(this).attr("class");	
	var content = $(this).html();
	if("90" == widht &&  clazz != ""){
		if("tdg1" != clazz){
			$(this).attr("class","tdg1");
			alert("恭喜您，已经达标！");	
		}else{
			$(this).attr("class","tdr");
			alert("很遗憾，您未达标！");	
		}
	}
});
function onClickAll(){
	$("input[name='checkboxList']").attr("checked",true); 
}
function checkSubmit(){
	var startDateStr = document.getElementById('startDateStr1').value;
	var endDateStr = document.getElementById('endDateStr1').value;
	if(startDateStr > endDateStr){
		alert("开始时间不能大于结束时间！");
		return false;
	}
	var num = 0;
	$("input[name='checkboxList']").each(function(){
		if($(this).attr("checked")){
			num ++;
		}
	});
	if(num == 0){
		alert('请选择健康管理项!');
		return false;
	}
	 $.ajax({
		url : "/huikang/healthRecord/do.jsp?method=save",
		type : "post",
		data : $("#health_record_form").serialize(),
		dataType : "text",
		success : function(resultCode){
			resultCode = $.trim(resultCode);
			if("0" == resultCode){
				alert("添加失败!");
			}else{
				alert("添加成功!");
				window.location.reload();
			}
		}	
	});
}
function showHealthProject(id){
	$.ajax({
			url : "/huikang/healthRecord/do.jsp",
			type :"post",
			data : "method=healthRecordHtml&id="+id,
			dataType : "html",
			success : function(html){
				$("#health_record_div").html(html);
			},
			error : function(){
				alert("网络错误，请稍后重试。");
			}
		});
}
</script>
	</div>
</up72:override>
<%@include file="/huikang/common.jsp"%>
<script type="text/javascript">
current_memu(2);
</script>