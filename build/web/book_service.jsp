<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.beautyparlour.db.DBConnection" %>
<%@ page session="true" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String service = request.getParameter("service");
    String date = request.getParameter("date");
    String time = request.getParameter("time");

    if (name != null && email != null && mobile != null && service != null && date != null && time != null) {
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO appointments(name, email, mobile, service, date, time) VALUES (?, ?, ?, ?, ?, ?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, mobile);
            ps.setString(4, service);
            ps.setString(5, date);
            ps.setString(6, time);

            int result = ps.executeUpdate();
            con.close();

            if (result > 0) {
                // Store email in session for fetching user-specific bookings
                session.setAttribute("userEmail", email);
                session.setAttribute("userMobile", mobile);

                // Redirect to bookings page
                response.sendRedirect("bookings.jsp");
            } else {
%>
                <script>alert("Booking failed! Please try again."); window.location.href="booknow.jsp";</script>
<%
            }
        } catch (Exception e) {
            e.printStackTrace();
%>
            <script>alert("Something went wrong!"); window.location.href="booknow.jsp";</script>
<%
        }
    } else {
%>
        <script>alert("All fields are required!"); window.location.href="booknow.jsp";</script>
<%
    }
%>
