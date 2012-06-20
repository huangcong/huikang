<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="smsBox" class="com.up72.huikang.model.SmsBox" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=SmsBox.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=SmsBox.ALIAS_SEND_ID%>：</th>
                                      <td><c:out value='${smsBox.sendId}'/></td>
                                      <th><%=SmsBox.ALIAS_SEND_NUM%>：</th>
                                      <td><c:out value='${smsBox.sendNum}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=SmsBox.ALIAS_TEMPLATE_ID%>：</th>
                                      <td><c:out value='${smsBox.templateId}'/></td>
                                      <th><%=SmsBox.ALIAS_TEMPLATE_MODEL%>：</th>
                                      <td><c:out value='${smsBox.templateModel}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=SmsBox.ALIAS_CONTENT%>：</th>
                                      <td><c:out value='${smsBox.content}'/></td>
                                      <th><%=SmsBox.ALIAS_TYPE%>：</th>
                                      <td><c:out value='${smsBox.type}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=SmsBox.ALIAS_DELETED%>：</th>
                                      <td><c:out value='${smsBox.deleted}'/></td>
                                      <th><%=SmsBox.ALIAS_SEND_TIME%>：</th>
                                      <td><c:out value='${smsBox.sendTimeString}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=SmsBox.ALIAS_RESULT%>：</th>
                                      <td><c:out value='${smsBox.result}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
