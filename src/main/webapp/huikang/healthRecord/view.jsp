<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="healthRecord" class="com.up72.huikang.model.HealthRecord" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=HealthRecord.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=HealthRecord.ALIAS_PATIENT_ID%>：</th>
                                      <td><c:out value='${healthRecord.patientId}'/></td>
                                      <th><%=HealthRecord.ALIAS_WORK_ORDER_ID%>：</th>
                                      <td><c:out value='${healthRecord.workOrderId}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=HealthRecord.ALIAS_BEGIN_DATE%>：</th>
                                      <td><c:out value='${healthRecord.beginDateString}'/></td>
                                      <th><%=HealthRecord.ALIAS_END_DATE%>：</th>
                                      <td><c:out value='${healthRecord.endDateString}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=HealthRecord.ALIAS_ITEM%>：</th>
                                      <td><c:out value='${healthRecord.item}'/></td>
                                      <th><%=HealthRecord.ALIAS_PLACE%>：</th>
                                      <td><c:out value='${healthRecord.place}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=HealthRecord.ALIAS_FREQUENCY%>：</th>
                                      <td><c:out value='${healthRecord.frequency}'/></td>
                                      <th><%=HealthRecord.ALIAS_DOSE%>：</th>
                                      <td><c:out value='${healthRecord.dose}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=HealthRecord.ALIAS_CONFIDENCE%>：</th>
                                      <td><c:out value='${healthRecord.confidence}'/></td>
                                      <th><%=HealthRecord.ALIAS_RESULT%>：</th>
                                      <td><c:out value='${healthRecord.result}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=HealthRecord.ALIAS_SORT%>：</th>
                                      <td><c:out value='${healthRecord.sort}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
