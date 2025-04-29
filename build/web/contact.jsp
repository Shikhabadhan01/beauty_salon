<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Belle Amour Salon</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Poppins:wght@400;600&display=swap');

        body {
            margin: 0;
            padding: 0;
            font-family: 'Playfair Display', sans-serif;
            background: linear-gradient(to bottom, rgba(172, 23, 84, 0.4), rgba(243, 113, 153, 0.1)), url("images/img.jpeg");
            background-size: cover;
            background-position: center;
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

        /* Contact Container */
        .contact-container {
            max-width: 750px;
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.8); /* Translucent effect */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px); /* Glass effect */
        }

        .contact-container h2 {
            text-align: center;
            font-family: 'Playfair Display', serif;
            font-size: 32px;
            color: #AC1754;
        }

        .contact-details {
            text-align: center;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .contact-details p {
            margin: 8px 0;
        }

        .social-icons a {
            font-size: 22px;
            margin: 0 10px;
            color: #AC1754;
            transition: 0.3s;
        }

        .social-icons a:hover {
            color: #E53888;
        }

        /* Contact Form */
        .contact-form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .contact-form input, .contact-form textarea {
            width: 96%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            background: rgba(255, 255, 255, 0.7); 
        }

        .contact-form textarea {
            height: 100px;
            resize: none;
        }

        .contact-form button {
            background: #E53888;
            color: white;
            font-size: 18px;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        .contact-form button:hover {
            background: #AC1754;
        }

       
    </style>
    <script src="https://kit.fontawesome.com/c3f26e23ac.js" crossorigin="anonymous"></script>
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
            <a href="aboutus.jsp">About Us</a>
            <a href="bookings.jsp">Your Bookings</a>
        </nav>
    </header>

    <div class="contact-container">
        <h2>Contact Us</h2>
        <div class="contact-details">
            <p><strong>Address:</strong> 123 Beauty Street, Mohali, India</p>
            <p><strong>Phone:</strong> +91 98765 43210</p>
            <p><strong>Email:</strong> info@belleamoursalon.com</p>
            <div class="social-icons">
                <a href="https://facebook.com" target="_blank"><i class="fab fa-facebook-f"></i></a>
                <a href="https://twitter.com" target="_blank"><i class="fab fa-twitter"></i></a>
                <a href="https://instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
            </div>
        </div>

        <!-- Contact Form -->
        <form class="contact-form">
            <input type="text" placeholder="Your Name" required>
            <input type="email" placeholder="Your Email" required>
            <textarea placeholder="Your Message" required></textarea>
            <button type="submit">Send Message</button>
        </form>
    </div>

</body>
</html>
