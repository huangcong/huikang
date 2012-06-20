<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="patient" class="com.up72.huikang.model.Patient" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=Patient.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=Patient.ALIAS_CODE%>：</th>
                                      <td><c:out value='${patient.code}'/></td>
                                      <th><%=Patient.ALIAS_NAME%>：</th>
                                      <td><c:out value='${patient.name}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Patient.ALIAS_BIRTHDAY%>：</th>
                                      <td><c:out value='${patient.birthday}'/></td>
                                      <th><%=Patient.ALIAS_SEX%>：</th>
                                      <td><c:out value='${patient.sex}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Patient.ALIAS_ADDRESS%>：</th>
                                      <td><c:out value='${patient.address}'/></td>
                                      <th><%=Patient.ALIAS_ZIP_CODE%>：</th>
                                      <td><c:out value='${patient.zipCode}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Patient.ALIAS_DEGREE%>：</th>
                                      <td><c:out value='${patient.degree}'/></td>
                                      <th><%=Patient.ALIAS_PHONE%>：</th>
                                      <td><c:out value='${patient.phone}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Patient.ALIAS_MOBILE%>：</th>
                                      <td><c:out value='${patient.mobile}'/></td>
                                      <th><%=Patient.ALIAS_EMAIL%>：</th>
                                      <td><c:out value='${patient.email}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Patient.ALIAS_MAIN_TYPE%>：</th>
                                      <td><c:out value='${patient.mainType}'/></td>
                                      <th><%=Patient.ALIAS_NATION%>：</th>
                                      <td><c:out value='${patient.nation}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Patient.ALIAS_MARRIAGE%>：</th>
                                      <td><c:out value='${patient.marriage}'/></td>
                                      <th><%=Patient.ALIAS_COMPANY%>：</th>
                                      <td><c:out value='${patient.company}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Patient.ALIAS_CONTACTER1%>：</th>
                                      <td><c:out value='${patient.contacter1}'/></td>
                                      <th><%=Patient.ALIAS_CONTACTER2%>：</th>
                                      <td><c:out value='${patient.contacter2}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Patient.ALIAS_SOURCE%>：</th>
                                      <td><c:out value='${patient.source}'/></td>
                                      <th><%=Patient.ALIAS_REMARK%>：</th>
                                      <td><c:out value='${patient.remark}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
