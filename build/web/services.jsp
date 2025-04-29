<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services - Beauty Parlour</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Poppins:wght@400;600&display=swap');

        body {
            font-family: 'Playfair Display', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
            text-align: center;
            background: linear-gradient(to bottom, rgba(172, 23, 84, 0.4), rgba(243, 113, 153, 0.1)), url("images/img.jpeg") ;        }
        /* Header Styling */
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
        .container {
            width: 80%;
            margin: 20px auto;
        }
        h1 {
            color: white; 
        }
        .service-category {
            background-size: cover;
            background-position: center;
            padding: 40px;
            margin: 10px 0;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            color: white;
        }
        h2 {
            background: rgba(0, 0, 0, 0.6);
            display: inline-block;
            padding: 10px;
            border-radius: 5px;
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
            <a href="bookings.jsp">Your Bookings</a>
        </nav>
    </header>
    <div class="container">
        <h1>Our Beauty Services</h1>
        <a href="haircare.jsp">
        <div class="service-category" style="background-image: url('images/haircare.png');">
            <h2>Haircare</h2>
        </div>
        <a href="skincare.jsp">
        <div class="service-category" style="background-image: url('images/skincare.jpg');">
            <h2>Skincare</h2>
        </div>
        <a href="bodycare.jsp">
        <div class="service-category" style="background-image: url('images/bodycare.webp');">
            <h2>Bodycare</h2>
        </div>
        <a href="makeup.jsp">
        <div class="service-category" style="background-image: url('images/makeup.jpeg');">
            <h2>Makeup Services</h2>
        </div>
    </div>
</body>
</html>