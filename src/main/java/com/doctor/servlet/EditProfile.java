package com.doctor.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/doctorUpdateProfile")
public class EditProfile extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
        try {
            String fullName = req.getParameter("fullname");
            String dob = req.getParameter("dob");
            String qualification = req.getParameter("qualification");
            String spec = req.getParameter("spec");
            String email = req.getParameter("email");
            String mobno = req.getParameter("mobno");
           
            
            int id=Integer.parseInt(req.getParameter("id"));

            Doctor d = new Doctor(id,fullName, dob, qualification, spec, email, mobno,"");

            DoctorDao dao = new DoctorDao(DBConnect.getConn());
            HttpSession session = req.getSession();

            if (dao.editDoctorProfile(d)) {
            	Doctor updateDoctor=dao.getDoctorById(id);
                session.setAttribute("succMsgd", "Doctor update Successfully..");
                session.setAttribute("docObj", updateDoctor);
                resp.sendRedirect("doctor/edit_profile.jsp");
            } else {
                session.setAttribute("errorMsgd", "Something wrong on server");
                resp.sendRedirect("doctor/edit_profile.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }	
		
		
		
	}

}
