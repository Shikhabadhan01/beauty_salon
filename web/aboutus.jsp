<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Belle Amour Salon</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Poppins:wght@400;600&display=swap');

        body {
            margin: 0;
            padding: 0;
            font-family: 'Playfair Display', sans-serif;
            background: linear-gradient(to bottom, rgba(172, 23, 84, 0.5), rgba(243, 113, 153, 0.5)),  url("images/img.jpeg") no-repeat center center/cover;
        }

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

        /* About Section */
        .about-container {
            max-width: 1000px;
            margin: 100px auto 90px;
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
            text-align: center;
        }

        .about-container h2 {
            font-family: 'Playfair Display', serif;
            font-size: 32px;
            color: #AC1754;
        }

        .about-container p {
            font-size: 18px;
            line-height: 1.6;
            color: #333;
        }

        /* Team Section */
        .team-container {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-top: 30px;
            flex-wrap: wrap;
        }

        .team-member {
            text-align: center;
            width: 250px;
            background: rgba(255, 255, 255, 0.9);
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        .team-member img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        .team-member h3 {
            font-size: 20px;
            color: #AC1754;
        }

        .team-member p {
            font-size: 16px;
            color: #555;
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
            <a href="services.jsp">Services</a>
            <a href="contact.jsp">Contact Us</a>
            <a href="bookings.jsp">Your Bookings</a>
        </nav>
    </header>
    
    <div class="about-container">
        <h2>About Us</h2>
        <p>Welcome to Belle Amour Salon, your ultimate destination for beauty and relaxation. Our team of experienced professionals is dedicated to providing the highest quality services in a warm and welcoming environment. We specialize in hair styling, skincare, makeup, and spa treatments tailored to meet your unique needs.</p>
        <p>With a passion for beauty and wellness, we strive to bring out the best in you. At Belle Amour Salon, your satisfaction is our top priority.</p>
    </div>

    <div class="team-container">
        <div class="team-member">
            <img src="images/stylist1.jpeg" alt="Stylist 1">
            <h3>Emma Smith</h3>
            <p>Senior Hair Stylist</p>
        </div>
        <div class="team-member">
            <img src="images/stylist2.jpeg" alt="Stylist 2">
            <h3>Sophia Johnson</h3>
            <p>Makeup Artist</p>
        </div>
        <div class="team-member">
            <img src="images/stylist3.jpeg" alt="Stylist 3">
            <h3>Ava Williams</h3>
            <p>Skincare Specialist</p>
        </div>
    </div>

</body>
</html>
