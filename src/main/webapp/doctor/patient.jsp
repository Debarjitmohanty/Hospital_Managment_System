<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="com.entity.Doctor" %>
<%@ page import="com.dao.AppointmentDAO" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Appointment" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient Page</title>
    <%@include file="../component/allcss.jsp"%>
    <style type="text/css">
        .paint-card {
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>

<c:if test="${empty docObj }">
    <c:redirect> url="../doctor_Login.jsp"</c:redirect>
</c:if>

<%@include file="navbar.jsp"%>

<div class="container p-3">
    <div class="row">

        <div class="col-md-12">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="fs-3 text-center">Patient Details</p>

                    <c:if test="${not empty errorMsg}">
                        <p class="fs-4 text-center text-danger">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session" />
                    </c:if>
                    <c:if test="${not empty succMsg}">
                        <p class="fs-4 text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session" />
                    </c:if>

                    <div class="table-responsive"> <!-- Make table responsive -->
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Full Name</th>
                                    <th scope="col">Gender</th>
                                    <th scope="col">Age</th>
                                    <th scope="col">Appointment Date</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Mob No</th>
                                    <th scope="col">Diseases</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Doctor d = (Doctor)session.getAttribute("docObj");
                                    AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                                    List<Appointment> list = dao.getAllAppointmentByDoctorLogin(d.getId());
                                    for(Appointment ap: list) {
                                %>
                                    <tr>
                                        <td><%=ap.getFullName() %></td>
                                        <td><%=ap.getGender() %></td>
                                        <td><%=ap.getAge() %></td>
                                        <td><%=ap.getAppoinDate() %></td>
                                        <td><%=ap.getEmail() %></td>
                                        <td><%=ap.getPhNo() %></td>
                                        <td><%=ap.getDiseases() %></td>
                                        <td><%=ap.getStatus() %></td>
                                        <td>
                                        <%
                                        if("pending".equals(ap.getStatus())){%>
                                        	<a href="comment.jsp?id=<%=ap.getId()%>" class="btn btn-success btn-sm">Comment</a>
                                       <%  }else{%>
                                    	   <a href="#" class="btn btn-success btn-sm disabled">Comment</a>
                                        <%}
                                        %>
                                        
                                        
                                            
                                        </td>
                                    </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>
