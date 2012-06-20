<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ include file="/common/taglibs.jsp"%>
<up72:override name="content">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="left" class="seat">
				<span>当前位置：<a href="#">工作安排</a>&gt;工作列表</span>
				<img src="/images/br-back.jpg" />
				<img src="/images/br-forward.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
	</table>
	<table width="730" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td>
				<div class="big_box_top">
					<span>工作列表</span><a href="bbs.html">更多...</a>
					<ul>
						<li onclick="workList_tag(1);" class="" id="tag_1">
							待处理
						</li>
						<li onclick="workList_tag(2);" class="" id="tag_2">
							日程
						</li>
						<li onclick="workList_tag(3);" class="tmhover" id="tag_3">
							已处理
						</li>
					</ul>
				</div>
				<div class="big_box_m" id="cont_1">
					<table width="96%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="5"></td>
						</tr>
					</table>
					<table width="98%" border="0" align="center" cellpadding="0"
						cellspacing="0" class="work-list">
						<tr>
							<th width="6%">
								<a href="javascript:;" onclick="selectAll('checkbox');">全选</a>
							</th>
							<th width="5%">
								紧急
							</th>
							<th width="11%">
								姓名
							</th>
							<th width="11%">
								客户级别
							</th>
							<th width="23%">
								病种
							</th>
							<th width="14%">
								来源
							</th>
							<th width="10%">
								状态
							</th>
						</tr>
						<c:if test="${items == null}">
							<tr><td>暂没有记录!</td></tr>
						</c:if>
						<c:if test="${items != null}">
							<c:forEach items="${items}" var="item">
						<tr>
								<td align="center">
								<input type="checkbox" value="${item.id }" name="checkbox" id="checkbox" />
							</td>
							<td>
								<c:choose>
									<c:when test="${item.level == 0}">
										<img src="/images/br-green.gif" title="低危" />
									</c:when>
									<c:when test="${item.level == 1}">
										<img src="/images/br-orange.gif" title="中危" />
									</c:when>
									<c:otherwise>
										<img src="/images/br-red.gif" title="高危" />
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<a href="javascript:;"
									onclick="window.open('info.html','right');">${item.patient.name }</a>
							</td>
							<td>
								<c:if test="${item.patient.level == 0}">普通</c:if>
								<c:if test="${item.patient.level == 1}">VIP</c:if>
							</td>
							<td>
							<c:forEach items="${item.workDiseaseList}" var="workDisease">
								<c:choose>
									<c:when test="${item.level == 2}">
										<a href="/huikang/mailReceiver/do.jsp?method=medicalRecords"
									onclick="ShowSub(1,10);window.open('/huikang/mailReceiver/do.jsp?method=medicalRecords','right');"
									id="S_Menu_110" title="进入应急处理">${workDisease.disease.name }</a>,
									</c:when>
									<c:otherwise>
										${workDisease.disease.name },
									</c:otherwise>
								</c:choose>
							</c:forEach>
								
							</td>
							<td>
								<c:if test="${item.source == 0}">系统导入</c:if>
								<c:if test="${item.source == 1}">日程</c:if>
							</td>
							<td>
								<c:if test="${item.status == 0}">未处理</c:if>
								<c:if test="${item.status == 1}">正处理</c:if>
								<c:if test="${item.status == 2}">已处理</c:if>
							</td>
						</tr>
							</c:forEach>
						</c:if>
						
					</table>
					<table width="98%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td>
								<table border="0" align="right" cellpadding="0" cellspacing="0"
									class="page">
									<tr>
									<pg:pager items="${pagination.totalRecord}"
															maxPageItems="${pagination.range}"
															maxIndexPages="${pagination.maxIndexPages}"
															isOffset="true" url="${CTX }/huikang/workOrder/do.jsp"
															 scope="request">
															<pg:param name="range" />
															<pg:param name="maxIndexPages" />
															<pg:param name="method" value="workList"/>
															<pg:param name="type" value="${type}"/>
															<c:if test="${pagination.totalPage > 1}">
																<div class="pagefen">
																	&nbsp;&nbsp;&nbsp;&nbsp;<jsp:include page="/common/page/simple.jsp" flush="true" />
																</div>
															</c:if>
															<c:if test="${pagination.totalRecord == 0}">
																<div class="pagefen">
																	暂无记录
																</div>
															</c:if>
										</pg:pager>
										<td>
											<a href="#"><img src="/images/pg-left-br.jpg" />
											</a>
										</td>
										<td width="180" align="center">
											第 1 页 共 8 页 跳转
											<select name="select2" id="select2">
												<option selected="selected">
													1
												</option>
												<option>
													2
												</option>
												<option>
													3
												</option>
												<option>
													4
												</option>
											</select>
											页
										</td>
										<td>
											<a href="#"><img src="/images/pg-right-br.jpg" />
											</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
				
				<div class="big_box_foot"></div>
			</td>
		</tr>
	</table>
	<table border="0" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td height="10"></td>
		</tr>
		<tr>
			<td align="center">
				<div class="br-blue" onclick="window.open('ac-email.html','right');">
					<span><strong><img src="/images/br-email.gif"
								style="vertical-align: middle;" />电邮</strong>
					</span>
				</div>
				<div class="br-blue" onclick="window.open('ac-sms.html','right');">
					<span><strong><img src="/images/br-phone.gif"
								style="vertical-align: middle;" />短信</strong>
					</span>
				</div>
				<div class="br-blue"
					onclick="window.open('ac-education.html','right');">
					<span><strong><img src="/images/br-pen.gif"
								style="vertical-align: middle;" />教育</strong>
					</span>
				</div>
				<div class="br-blue" onclick="window.open('ac-down.html','right');">
					<span><strong><img src="/images/br-link.gif"
								style="vertical-align: middle;" />下载</strong>
					</span>
				</div>
			</td>
		</tr>
	</table>
</up72:override>
<%@include file="./common.jsp"%>
<script type="text/javascript">
current_memu(2);
</script>