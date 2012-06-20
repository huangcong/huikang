<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="emailBox" class="com.up72.huikang.model.EmailBox" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=EmailBox.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=EmailBox.ALIAS_SEND_ID%>：</th>
                                      <td><c:out value='${emailBox.sendId}'/></td>
                                      <th><%=EmailBox.ALIAS_SEND_EMAIL%>：</th>
                                      <td><c:out value='${emailBox.sendEmail}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=EmailBox.ALIAS_TITLE%>：</th>
                                      <td><c:out value='${emailBox.title}'/></td>
                                      <th><%=EmailBox.ALIAS_TEMPLATE_ID%>：</th>
                                      <td><c:out value='${emailBox.templateId}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=EmailBox.ALIAS_TEMPLATE_MODEL%>：</th>
                                      <td><c:out value='${emailBox.templateModel}'/></td>
                                      <th><%=EmailBox.ALIAS_CONTENT%>：</th>
                                      <td><c:out value='${emailBox.content}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=EmailBox.ALIAS_FILES%>：</th>
                                      <td><c:out value='${emailBox.files}'/></td>
                                      <th><%=EmailBox.ALIAS_TYPE%>：</th>
                                      <td><c:out value='${emailBox.type}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=EmailBox.ALIAS_DELETED%>：</th>
                                      <td><c:out value='${emailBox.deleted}'/></td>
                                      <th><%=EmailBox.ALIAS_SEND_TIME%>：</th>
                                      <td><c:out value='${emailBox.sendTimeString}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=EmailBox.ALIAS_RESULT%>：</th>
                                      <td><c:out value='${emailBox.result}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
