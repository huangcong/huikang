<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="smsReceiver" class="com.up72.huikang.model.SmsReceiver" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=SmsReceiver.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=SmsReceiver.ALIAS_SMS_ID%>：</th>
                                      <td><c:out value='${smsReceiver.smsId}'/></td>
                                      <th><%=SmsReceiver.ALIAS_RECEIVE_ID%>：</th>
                                      <td><c:out value='${smsReceiver.receiveId}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=SmsReceiver.ALIAS_WORK_ORDER_ID%>：</th>
                                      <td><c:out value='${smsReceiver.workOrderId}'/></td>
                                      <th><%=SmsReceiver.ALIAS_RECEIVE_NAME%>：</th>
                                      <td><c:out value='${smsReceiver.receiveName}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=SmsReceiver.ALIAS_RECEIVE_SMS%>：</th>
                                      <td><c:out value='${smsReceiver.receiveSms}'/></td>
                                      <th><%=SmsReceiver.ALIAS_CREATE_TIME%>：</th>
                                      <td><c:out value='${smsReceiver.createTimeString}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
