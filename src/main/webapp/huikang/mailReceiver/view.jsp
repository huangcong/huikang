<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="mailReceiver" class="com.up72.huikang.model.MailReceiver" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=MailReceiver.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=MailReceiver.ALIAS_MAIL_ID%>：</th>
                                      <td><c:out value='${mailReceiver.mailId}'/></td>
                                      <th><%=MailReceiver.ALIAS_RECEIVE_ID%>：</th>
                                      <td><c:out value='${mailReceiver.receiveId}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=MailReceiver.ALIAS_WORK_ORDER_ID%>：</th>
                                      <td><c:out value='${mailReceiver.workOrderId}'/></td>
                                      <th><%=MailReceiver.ALIAS_RECEIVE_NAME%>：</th>
                                      <td><c:out value='${mailReceiver.receiveName}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=MailReceiver.ALIAS_RECEIVE_MAIL%>：</th>
                                      <td><c:out value='${mailReceiver.receiveMail}'/></td>
                                      <th><%=MailReceiver.ALIAS_RECEIVE_TYPE%>：</th>
                                      <td><c:out value='${mailReceiver.receiveType}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=MailReceiver.ALIAS_CREATE_TIME%>：</th>
                                      <td><c:out value='${mailReceiver.createTimeString}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
