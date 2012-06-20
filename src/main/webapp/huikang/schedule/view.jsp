<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="schedule" class="com.up72.huikang.model.Schedule" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=Schedule.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=Schedule.ALIAS_DOCTOR_ID%>：</th>
                                      <td><c:out value='${schedule.doctorId}'/></td>
                                      <th><%=Schedule.ALIAS_TITLE%>：</th>
                                      <td><c:out value='${schedule.title}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Schedule.ALIAS_CONTENT%>：</th>
                                      <td><c:out value='${schedule.content}'/></td>
                                      <th><%=Schedule.ALIAS_ADDRESS%>：</th>
                                      <td><c:out value='${schedule.address}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Schedule.ALIAS_TYPE%>：</th>
                                      <td><c:out value='${schedule.type}'/></td>
                                      <th><%=Schedule.ALIAS_LECTURER_IDS%>：</th>
                                      <td><c:out value='${schedule.lecturerIds}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Schedule.ALIAS_LECTURER_NAMES%>：</th>
                                      <td><c:out value='${schedule.lecturerNames}'/></td>
                                      <th><%=Schedule.ALIAS_MAX_NUM%>：</th>
                                      <td><c:out value='${schedule.maxNum}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Schedule.ALIAS_MIN_NUM%>：</th>
                                      <td><c:out value='${schedule.minNum}'/></td>
                                      <th><%=Schedule.ALIAS_INVITE_NUM%>：</th>
                                      <td><c:out value='${schedule.inviteNum}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Schedule.ALIAS_WORK_ORDER_ID%>：</th>
                                      <td><c:out value='${schedule.workOrderId}'/></td>
                                      <th><%=Schedule.ALIAS_SCHEDULE_DATE%>：</th>
                                      <td><c:out value='${schedule.scheduleDateString}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Schedule.ALIAS_CREATE_TIME%>：</th>
                                      <td><c:out value='${schedule.createTimeString}'/></td>
                                      <th><%=Schedule.ALIAS_START_TIME%>：</th>
                                      <td><c:out value='${schedule.startTimeString}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Schedule.ALIAS_END_TIME%>：</th>
                                      <td><c:out value='${schedule.endTimeString}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
