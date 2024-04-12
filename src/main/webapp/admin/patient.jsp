<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.dao.AppointmentDAO"%>
<%@ page import="com.dao.DoctorDao"%>
<%@ page import="com.db.DBConnect"%>
<%@ page import="com.entity.Appointment"%>
<%@ page import="com.entity.Doctor"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Details</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>

<%@include file="navbar.jsp"%>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card paint-card">
                <div class="card-body">
                    <h1 class="fs-3 text-center">Patient Details</h1>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Full Name</th>
                                <th scope="col">Gender</th>
                                <th scope="col">Age</th>
                                <th scope="col">Appointment</th>
                                <th scope="col">Email</th>
                                <th scope="col">Mob No</th>
                                <th scope="col">Diseases</th>
                                <th scope="col">Doctor Name</th>
                                <th scope="col">Address</th>
                                <th scope="col">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                            AppointmentDAO appointmentDAO = new AppointmentDAO(DBConnect.getConn());
                            DoctorDao doctorDAO = new DoctorDao(DBConnect.getConn());
                            List<Appointment> appointments = appointmentDAO.getAllAppointment(); 
                            for (Appointment appointment : appointments) {
                                Doctor doctor = doctorDAO.getDoctorById(appointment.getDoctorId());
                            %>
                            <tr>
                                <td><%= appointment.getFullName() %></td>
                                <td><%= appointment.getGender() %></td>
                                <td><%= appointment.getAge() %></td>
                                <td><%= appointment.getAppoinDate() %></td>
                                <td><%= appointment.getEmail() %></td>
                                <td><%= appointment.getPhNo() %></td>
                                <td><%= appointment.getDiseases() %></td>
                                <td><%= doctor.getFullName() %></td>
                                <td><%= appointment.getAddress() %></td>
                                <td><%= appointment.getStatus() %></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
