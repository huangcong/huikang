<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="emailInfo" class="com.up72.huikang.model.EmailInfo" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=EmailInfo.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=EmailInfo.ALIAS_DOCTOR_ID%>：</th>
                                      <td><c:out value='${emailInfo.doctorId}'/></td>
                                      <th><%=EmailInfo.ALIAS_EMAIL%>：</th>
                                      <td><c:out value='${emailInfo.email}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=EmailInfo.ALIAS_SERVER%>：</th>
                                      <td><c:out value='${emailInfo.server}'/></td>
                                      <th><%=EmailInfo.ALIAS_PASSWORD%>：</th>
                                      <td><c:out value='${emailInfo.password}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=EmailInfo.ALIAS_AUTH%>：</th>
                                      <td><c:out value='${emailInfo.auth}'/></td>
                                      <th><%=EmailInfo.ALIAS_DELETED%>：</th>
                                      <td><c:out value='${emailInfo.deleted}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
