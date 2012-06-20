<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="workOrder" class="com.up72.huikang.model.WorkOrder" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=WorkOrder.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=WorkOrder.ALIAS_PATIENT_ID%>：</th>
                                      <td><c:out value='${workOrder.patientId}'/></td>
                                      <th><%=WorkOrder.ALIAS_LEVEL%>：</th>
                                      <td><c:out value='${workOrder.level}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=WorkOrder.ALIAS_STATUS%>：</th>
                                      <td><c:out value='${workOrder.status}'/></td>
                                      <th><%=WorkOrder.ALIAS_SOURCE%>：</th>
                                      <td><c:out value='${workOrder.source}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=WorkOrder.ALIAS_DOCTOR_ID%>：</th>
                                      <td><c:out value='${workOrder.doctorId}'/></td>
                                      <th><%=WorkOrder.ALIAS_DISEASES%>：</th>
                                      <td><c:out value='${workOrder.diseases}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=WorkOrder.ALIAS_CREATE_TIME%>：</th>
                                      <td><c:out value='${workOrder.createTimeString}'/></td>
                                      <th><%=WorkOrder.ALIAS_UPDATE_TIME%>：</th>
                                      <td><c:out value='${workOrder.updateTimeString}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
