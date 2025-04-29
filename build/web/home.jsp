<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.*" %>

<%
    String userEmail = (String) session.getAttribute("userEmail");

    if(userEmail == null) {
        response.sendRedirect("login.jsp"); // Redirect to login if session is not set
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Belle Amour Salon</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Poppins:wght@400;600&display=swap');

        body {
            margin: 0;
            padding: 0;
            font-family: 'Playfair Display', sans-serif;
            background-color: #F7A8C4;
        }

        /* Header Styling */
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #AC1754;
            padding: 15px 30px;
        }

        /* Logo & Salon Name */
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
            font-family: 'Playfair Display', serif;
        }

        /* Navbar Styling */
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

        /* Hero Section */
        .hero-section {
            background: linear-gradient(to bottom, rgba(172, 23, 84, 0.5), rgba(243, 113, 153, 0.5)), 
                        url("images/pamper.jpg") no-repeat center center/cover;
            height: 500px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            flex-direction: column;
            color: white;
            padding: 30px;
        }

        .hero-section h1 {
            font-size: 50px;
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.3);
        }

        .hero-section p {
            font-size: 18px;
            max-width: 700px;
            background: rgba(255, 255, 255, 0.2);
            padding: 12px 20px;
            border-radius: 8px;
            backdrop-filter: blur(5px);
        }

        /* Call to Action Button */
        .button {
            background-color: #E53887;
            color: white;
            padding: 12px 28px;
            font-size: 18px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            text-transform: uppercase;
            font-weight: bold;
            margin-top: 10px;
        }

        .button:hover {
            background-color: #AC1754;
            transform: translateY(-3px);
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
            <a href="services.jsp">Services</a>
            <a href="aboutus.jsp">About Us</a>
            <a href="contact.jsp">Contact Us</a>
            <a href="bookings.jsp">Your Bookings</a>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero-section">
        <h1>Welcome to Belle Amour Salon</h1>
        <p>Experience the luxury of beauty & elegance like never before. Pamper yourself with our premium services.</p>
        <button class="button" onclick="window.location.href='services.jsp'">Book an Appointment</button>
    </section>

</body>
</html>
