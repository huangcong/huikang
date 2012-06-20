<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="doctorDisease" class="com.up72.huikang.model.DoctorDisease" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=DoctorDisease.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=DoctorDisease.ALIAS_DOCTOR_ID%>：</th>
                                      <td><c:out value='${doctorDisease.doctorId}'/></td>
                                      <th><%=DoctorDisease.ALIAS_DISEASE_ID%>：</th>
                                      <td><c:out value='${doctorDisease.diseaseId}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
