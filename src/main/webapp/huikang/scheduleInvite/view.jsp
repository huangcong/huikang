<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="scheduleInvite" class="com.up72.huikang.model.ScheduleInvite" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=ScheduleInvite.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=ScheduleInvite.ALIAS_SCHEDULE_ID%>：</th>
                                      <td><c:out value='${scheduleInvite.scheduleId}'/></td>
                                      <th><%=ScheduleInvite.ALIAS_INVITE_TYPE%>：</th>
                                      <td><c:out value='${scheduleInvite.inviteType}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=ScheduleInvite.ALIAS_WORK_ORDER_ID%>：</th>
                                      <td><c:out value='${scheduleInvite.workOrderId}'/></td>
                                      <th><%=ScheduleInvite.ALIAS_INVITE_ID%>：</th>
                                      <td><c:out value='${scheduleInvite.inviteId}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=ScheduleInvite.ALIAS_INVITE_NAME%>：</th>
                                      <td><c:out value='${scheduleInvite.inviteName}'/></td>
                                      <th><%=ScheduleInvite.ALIAS_CREATE_TIME%>：</th>
                                      <td><c:out value='${scheduleInvite.createTimeString}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
