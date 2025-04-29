<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Now - Beauty Parlour</title>
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
            margin-top: 40px;
            padding: 60px;
            background: white;
            border-radius: 10px;
            width: 50%;
            margin: auto;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        button {
            background: #AC1754;
            color: white;
            border: none;
            padding: 10px;
            margin-top: 20px;
            width: 100%;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
        }
        button:hover {
            background: #F37199;
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
        <h2>Book Your Appointment</h2>
        <form action="book_service.jsp" method="post">
            <input type="text" name="name" placeholder="Enter Your Name" required>
            <input type="email" name="email" placeholder="Enter Your Email" required>
            <input type="text" name="mobile" placeholder="Enter Your Mobile Number" required>
            <select name="service" required>
                <option value="">Select Service</option>
                <option value="Haircut">Haircut</option>
                <option value="Haircut">Hair Coloring</option>
                <option value="Haircut">Hair Spa</option>
                <option value="Haircut">Keratin Treatment</option>
                <option value="Skincare">Facial</option>
                <option value="Skincare">Skin Polishing</option>
                <option value="Skincare">Acne Treatment</option>
                <option value="Skincare">Anti-Aging Treatment</option>
                <option value="Bodycare">Body Massage</option>
                <option value="Bodycare">Body Scrub</option>
                <option value="Bodycare">Waxing</option>
                <option value="Bodycare">Tan Removal</option>
                <option value="Makeup">Bridal Makeup</option>
                <option value="Makeup">Party Makeup</option>
                <option value="Makeup">Natural Glow Makeup</option>
                <option value="Makeup">Airbrush Makeup</option>
                
            </select>
            <input type="date" name="date" required>
            <input type="time" name="time" required>
            <button type="submit">Book Now</button>
        </form>
    </div>
</body>
</html>
