<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.beautyparlour.db.DBConnection" %>
<%@ page session="true" %>
<%
    String errorMessage = null;

    if(request.getMethod().equals("POST")) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if(email != null && password != null && !email.isEmpty() && !password.isEmpty()) {
            try {
                // Database Connection
                Class.forName("com.mysql.cj.jdbc.Driver"); 
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_parlour", "root", "Shikha@8585");

                // SQL Query to check login
                String query = "SELECT * FROM users WHERE email=? AND password=?";
                PreparedStatement stmt = con.prepareStatement(query);
                stmt.setString(1, email);
                stmt.setString(2, password);
                ResultSet rs = stmt.executeQuery();

                if(rs.next()) {
                    
                    session.setAttribute("userEmail", email);
                    response.sendRedirect("home.jsp"); // Redirect to homepage
                    return;
                } else {
                    errorMessage = "Invalid email or password. Please try again.";
                }
                stmt.close();
                con.close();
            } catch(Exception e) {
                errorMessage = "Database error: " + e.getMessage();
            }
        } else {
            errorMessage = "Please enter both email and password.";
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Beauty Parlour</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Playfair Display', sans-serif;
        }

        body {
            background: linear-gradient(to bottom, rgba(172, 23, 84, 0.5), rgba(243, 113, 153, 0.5)),  
                        url("images/img.jpeg") no-repeat center center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            padding: 25px;
            border-radius: 15px;
            width: 400px;
            text-align: center;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: white;
            margin-bottom: 20px;
            font-weight: 600;
            text-transform: uppercase;
        }

        input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            outline: none;
            background: rgba(255, 255, 255, 0.8);
        }

        input::placeholder {
            color: #555;
        }

        button {
            width: 100%;
            padding: 12px;
            border: none;
            background: #ff477e;
            color: white;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background: #d6336c;
        }

        p {
            color: white;
            margin-top: 15px;
        }

        p a {
            color: #ffefba;
            text-decoration: none;
            font-weight: bold;
        }

        p a:hover {
            text-decoration: underline;
        }

        .success, .error {
            margin-top: 10px;
            padding: 10px;
            border-radius: 5px;
            font-weight: bold;
        }

        .success {
            background: #4caf50;
            color: white;
        }

        .error {
            background: #ff4d4d;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="login.jsp" method="post">
            <input type="email" name="email" placeholder="Email" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <button type="submit">Login</button>
        </form>
        <p>Don't have an account? <a href="register.jsp">Register here</a></p>

        <% 
            if(request.getMethod().equals("POST")) {
                String email = request.getParameter("email");
                String password = request.getParameter("password");

                try {
                    Connection con = DBConnection.getConnection();
                    String query = "SELECT * FROM users WHERE email=? AND password=?";
                    PreparedStatement stmt = con.prepareStatement(query);
                    stmt.setString(1, email);
                    stmt.setString(2, password);
                    ResultSet rs = stmt.executeQuery();
                    
                    if(rs.next()) {
                        session.setAttribute("user", email);
                        out.println("<div class='success'>Login successful! Redirecting...</div>");
                        response.sendRedirect("dashboard.jsp");
                    } else {
                        out.println("<div class='error'>Invalid email or password. Try again.</div>");
                    }
                    rs.close();
                    stmt.close();
                    con.close();
                } catch(Exception e) {
                    out.println("<div class='error'>Error: " + e.getMessage() + "</div>");
                }
            }
        %>
    </div>
</body>
</html>
