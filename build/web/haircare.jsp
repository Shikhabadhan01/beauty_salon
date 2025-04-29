<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Haircare Services - Beauty Parlour</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Poppins:wght@400;600&display=swap');

        body {
            font-family: 'Playfair Display', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
            text-align: center;
            background: url("images/bg.jpeg") no-repeat center center/cover;
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
            width: 80%;
            margin: 20px auto;
            background: rgba(255, 255, 255, 0.8); /* Making the container translucent */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color:  #d63384;
        }
        .service {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 15px;
            position: relative;
        }
        .service img {
            width: 150px;
            height: 150px;
            border-radius: 10px;
            object-fit: cover;
        }
        .service-details {
            flex-grow: 1;
            margin-left: 20px;
            text-align: left;
        }
        .service h2 {
            margin: 0 0 10px;
            color: #d63384;
        }
        .service p {
            margin: 5px 0;
            color: #555;
        }
        .price {
            font-size: 18px;
            font-weight: bold;
            color: #d63384;
        }
        .book-btn {
            background-color: #d63384;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            position: absolute;
            right: 20px;
        }
        .book-btn:hover {
            background-color: #b02a6f;
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
        <h1>Our Haircare Services</h1>

        <div class="service">
            <img src="images/haircut.jpeg" alt="Haircut & Styling">
            <div class="service-details">
                <h2>Haircut & Styling</h2>
                <p>Products Used: Professional Scissors, Styling Gel, Hair Spray</p>
                <p class="price">Price: ₹500</p>
            </div>
            <button class="book-btn" onclick="window.location.href='booknow.jsp'">Book an Appointment</button>
        </div>

        <div class="service">
            <img src="images/haircolor.jpeg" alt="Hair Coloring">
            <div class="service-details">
                <h2>Hair Coloring</h2>
                <p>Products Used: L'Oréal Professional, Schwarzkopf, Matrix</p>
                <p class="price">Price: ₹1500</p>
            </div>
            <button class="book-btn" onclick="window.location.href='booknow.jsp'">Book an Appointment</button>
        </div>

        <div class="service">
            <img src="images/hairspa.jpeg" alt="Hair Spa">
            <div class="service-details">
                <h2>Hair Spa</h2>
                <p>Products Used: Keratin Mask, Deep Nourishing Shampoo</p>
                <p class="price">Price: ₹1200</p>
            </div>
            <button class="book-btn" onclick="window.location.href='booknow.jsp'">Book an Appointment</button>
        </div>

        <div class="service">
            <img src="images/keratin.jpeg" alt="Keratin Treatment">
            <div class="service-details">
                <h2>Keratin Treatment</h2>
                <p>Products Used: Keratin Complex, Brazilian Blowout</p>
                <p class="price">Price: ₹3500</p>
            </div>
            <button class="book-btn" onclick="window.location.href='booknow.jsp'">Book an Appointment</button>
        </div>
    </div>
</body>
</html>
