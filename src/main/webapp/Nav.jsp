<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emp_Mgt</title>

<style>
    /* ===== RESET ===== */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: "Poppins", sans-serif;
        background: #f5f6fa;
    }

    /* ===== NAVBAR CONTAINER ===== */
    nav {
        background: linear-gradient(90deg, #081c24, #123344, #1e4b61);
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 1rem 3rem;
        position: sticky;
        height: 85px;
        top: 0;
        z-index: 100;
        box-shadow: 0 6px 15px rgba(0, 0, 0, 0.3);
        transition: all 0.3s ease-in-out;
    }

    nav:hover {
        background: linear-gradient(90deg, #0d2833, #1a4258, #25637e);
    }

    /* ===== LOGO (with image) ===== */
    .logo {
        display: flex;
        align-items: center;
        gap: 10px;
        cursor: pointer;
        transition: transform 0.3s ease;
    }

    .logo img {
            width: 82px;
    height: 77px;
   
        border-radius: 50%;
        object-fit: cover;
        box-shadow: 0 0 15px rgba(0, 255, 204, 0.4);
        border: 2px solid rgba(0, 255, 204, 0.6);
    }

    .logo span {
        color: #ffffff;
        font-size: 2.2rem;
        font-weight: 800;
        letter-spacing: 2px;
        text-transform: uppercase;
        text-shadow: 0 2px 10px rgba(0, 255, 204, 0.4);
    }

    .logo:hover {
        transform: scale(1.08);
    }

    /* ===== NAV LINKS ===== */
    .nav-links {
        display: flex;
        list-style: none;
        gap: 3rem;
    }

    .nav-links a {
        color: #f2f2f2;
        text-decoration: none;
        font-size: 1.4rem;
        font-weight: 600;
        position: relative;
        transition: all 0.3s ease;
        padding: 0.3rem 0;
        letter-spacing: 0.5px;
    }

    /* Underline animation */
    .nav-links a::after {
        content: "";
        position: absolute;
        width: 0%;
        height: 3px;
        left: 0;
        bottom: -6px;
        background-color: #00ffcc;
        border-radius: 2px;
        box-shadow: 0 0 10px #00ffcc;
        transition: width 0.3s ease-in-out;
    }

    .nav-links a:hover::after {
        width: 100%;
    }

    .nav-links a:hover {
        color: #00ffcc;
        text-shadow: 0 0 15px #00ffcc;
        transform: scale(1.05);
    }

    /* ===== HAMBURGER MENU (for mobile) ===== */
    .hamburger {
        display: none;
        flex-direction: column;
        cursor: pointer;
        gap: 6px;
        z-index: 200;
    }

    .hamburger span {
        height: 4px;
        width: 28px;
        background: #ffffff;
        border-radius: 5px;
        transition: all 0.3s ease;
        box-shadow: 0 0 5px rgba(255, 255, 255, 0.5);
    }

    /* ===== RESPONSIVE ===== */
    @media (max-width: 768px) {
        .nav-links {
            position: fixed;
            top: 0;
            right: -100%;
            height: 100vh;
            width: 70%;
            background: linear-gradient(180deg, #0f2027, #203a43, #2c5364);
            flex-direction: column;
            justify-content: center;
            align-items: center;
            gap: 3rem;
            transition: right 0.4s ease-in-out;
            box-shadow: -5px 0 15px rgba(0, 0, 0, 0.5);
        }

        .nav-links a {
            font-size: 2rem;
        }

        .nav-links.active {
            right: 0;
        }

        .hamburger {
            display: flex;
        }
    }

    /* Toggle animation for hamburger */
    input[type="checkbox"] {
        display: none;
    }

    input[type="checkbox"]:checked ~ .nav-links {
        right: 0;
    }

    input[type="checkbox"]:checked ~ .hamburger span:nth-child(1) {
        transform: rotate(45deg) translate(6px, 6px);
    }

    input[type="checkbox"]:checked ~ .hamburger span:nth-child(2) {
        opacity: 0;
    }

    input[type="checkbox"]:checked ~ .hamburger span:nth-child(3) {
        transform: rotate(-45deg) translate(7px, -7px);
    }
</style>
</head>

<body>

<nav>
    <div class="logo">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTigiSLKW9gfpwlNJq-mr1Fy3vDeDQSvnrU422-2j5r-p8ucp8mD1DxgOIrlfQgtNrFcXE&usqp=CAU" alt="Logo">
        <span>Emp_Mgt</span>
    </div>

    <!-- Hidden checkbox for toggle -->
    <input type="checkbox" id="menu-toggle">

    <!-- Hamburger icon -->
    <label for="menu-toggle" class="hamburger">
        <span></span>
        <span></span>
        <span></span>
    </label>

    <!-- Navbar Links -->
    <ul class="nav-links">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="Register.jsp">Register</a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="DashBoard.jsp">Dashboard</a></li>
        <li><a href="view">View</a></li>
        <li><a href="logout">Logout</a></li>
    </ul>
</nav>

</body>
</html>
