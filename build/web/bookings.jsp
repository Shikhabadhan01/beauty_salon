<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.beautyparlour.db.DBConnection" %>
<%@ page session="true" %>

<%
    String userEmail = (String) session.getAttribute("userEmail");
    String userMobile = (String) session.getAttribute("userMobile");

    if (userEmail == null && userMobile == null) {
        response.sendRedirect("booknow.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Bookings - Beauty Parlour</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Poppins:wght@400;600&display=swap');

        body {
            font-family: 'Playfair Display', sans-serif;
            background-color: #f8f8f8;
            text-align: center;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #AC1754;
            padding: 15px 30px;
        }
        .logo {
            display: flex;
            align-items: center;
        }
        .logo img {
            height: 50px;
            width: 50px;
            border-radius: 50%;
            margin-right: 10px;
        }
        .salon-name {
            font-size: 24px;
            font-weight: bold;
            color: white;
        }
        .navbar {
            display: flex;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
            font-weight: 600;
            transition: 0.3s ease-in-out;
        }
        .navbar a:hover {
            color: #F37199;
        }
        .container {
            margin-top: 20px;
            padding: 20px;
            background: white;
            border-radius: 10px;
            width: 60%;
            margin: auto;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #AC1754;
            color: white;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <img src="n.png" alt="Belle Amour Salon Logo">
            <span class="salon-name">Belle Amour Salon</span>
        </div>
        <nav class="navbar">
            <a href="home.jsp">Home</a>
            <a href="aboutus.jsp">About Us</a>
            <a href="contact.jsp">Contact Us</a>
        </nav>
    </header>

    <div class="container">
        <h2>Your Booked Appointments</h2>
        <table>
            <tr>
                <th>Service</th>
                <th>Date</th>
                <th>Time</th>
            </tr>
            
            <%
                try {
                    Connection con = DBConnection.getConnection();
                    PreparedStatement ps = con.prepareStatement("SELECT service, date, time FROM appointments WHERE email=? OR mobile=? ORDER BY date, time");
                    ps.setString(1, userEmail);
                    ps.setString(2, userMobile);
                    ResultSet rs = ps.executeQuery();

                    while (rs.next()) {
            %>
                        <tr>
                            <td><%= rs.getString("service") %></td>
                            <td><%= rs.getString("date") %></td>
                            <td><%= rs.getString("time") %></td>
                        </tr>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
    </div>
</body>
</html>
