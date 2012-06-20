<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="patientDisease" class="com.up72.huikang.model.PatientDisease" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=PatientDisease.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=PatientDisease.ALIAS_PATIENT_ID%>：</th>
                                      <td><c:out value='${patientDisease.patientId}'/></td>
                                      <th><%=PatientDisease.ALIAS_DISEASE_ID%>：</th>
                                      <td><c:out value='${patientDisease.diseaseId}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=PatientDisease.ALIAS_DIAGNOSE_TIME%>：</th>
                                      <td><c:out value='${patientDisease.diagnoseTimeString}'/></td>
                                      <th><%=PatientDisease.ALIAS_DIAGNOSE_ADDRESS%>：</th>
                                      <td><c:out value='${patientDisease.diagnoseAddress}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=PatientDisease.ALIAS_FAMILY_HISTORY%>：</th>
                                      <td><c:out value='${patientDisease.familyHistory}'/></td>
                                      <th><%=PatientDisease.ALIAS_YEARS%>：</th>
                                      <td><c:out value='${patientDisease.years}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
