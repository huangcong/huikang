<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="doctor" class="com.up72.huikang.model.Doctor" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=Doctor.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=Doctor.ALIAS_USER_NAME%>：</th>
                                      <td><c:out value='${doctor.userName}'/></td>
                                      <th><%=Doctor.ALIAS_PASSWORD%>：</th>
                                      <td><c:out value='${doctor.password}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Doctor.ALIAS_REAL_NAME%>：</th>
                                      <td><c:out value='${doctor.realName}'/></td>
                                      <th><%=Doctor.ALIAS_BIRTHDAY%>：</th>
                                      <td><c:out value='${doctor.birthday}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Doctor.ALIAS_SEX%>：</th>
                                      <td><c:out value='${doctor.sex}'/></td>
                                      <th><%=Doctor.ALIAS_ADDRESS%>：</th>
                                      <td><c:out value='${doctor.address}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Doctor.ALIAS_PHONE%>：</th>
                                      <td><c:out value='${doctor.phone}'/></td>
                                      <th><%=Doctor.ALIAS_MOBILE%>：</th>
                                      <td><c:out value='${doctor.mobile}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Doctor.ALIAS_EMAIL%>：</th>
                                      <td><c:out value='${doctor.email}'/></td>
                                      <th><%=Doctor.ALIAS_MAIN_TYPE%>：</th>
                                      <td><c:out value='${doctor.mainType}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Doctor.ALIAS_NATION%>：</th>
                                      <td><c:out value='${doctor.nation}'/></td>
                                      <th><%=Doctor.ALIAS_MARRIAGE%>：</th>
                                      <td><c:out value='${doctor.marriage}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Doctor.ALIAS_COMPANY%>：</th>
                                      <td><c:out value='${doctor.company}'/></td>
                                      <th><%=Doctor.ALIAS_WORK_GROUP_ID%>：</th>
                                      <td><c:out value='${doctor.workGroupId}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Doctor.ALIAS_SITE%>：</th>
                                      <td><c:out value='${doctor.site}'/></td>
                                      <th><%=Doctor.ALIAS_EMAIL_VALID%>：</th>
                                      <td><c:out value='${doctor.emailValid}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
