<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="contacter" class="com.up72.huikang.model.Contacter" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=Contacter.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=Contacter.ALIAS_PATIENT_ID%>：</th>
                                      <td><c:out value='${contacter.patientId}'/></td>
                                      <th><%=Contacter.ALIAS_NAME%>：</th>
                                      <td><c:out value='${contacter.name}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Contacter.ALIAS_SEX%>：</th>
                                      <td><c:out value='${contacter.sex}'/></td>
                                      <th><%=Contacter.ALIAS_EMAIL%>：</th>
                                      <td><c:out value='${contacter.email}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Contacter.ALIAS_PHONE%>：</th>
                                      <td><c:out value='${contacter.phone}'/></td>
                                      <th><%=Contacter.ALIAS_MOBILE%>：</th>
                                      <td><c:out value='${contacter.mobile}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Contacter.ALIAS_COMPANY%>：</th>
                                      <td><c:out value='${contacter.company}'/></td>
                                      <th><%=Contacter.ALIAS_MAIN_TYPE%>：</th>
                                      <td><c:out value='${contacter.mainType}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
