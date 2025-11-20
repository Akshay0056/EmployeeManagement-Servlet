<!DOCTYPE html>
 <%@ include file="Nav.jsp" %>	
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Emp_Mrgt</title>

  <style>
    /* ===== RESET ===== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: "Poppins", sans-serif;
      background: #f8fafc;
      color: #1e293b;
      overflow-x: hidden;
    }

    /* ===== NAVBAR ===== */
    nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background: #0f172a;
      color: white;
      padding: 15px 60px;
      position: sticky;
      top: 0;
      z-index: 1000;
      transition: background 0.3s ease, box-shadow 0.3s ease;
    }

    nav.scrolled {
      background: #1e293b;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    }

    .logo {
      font-size: 1.8rem;
      font-weight: 600;
      color: #38bdf8;
      letter-spacing: 1px;
    }

    .nav-links {
      display: flex;
      gap: 25px;
    }

    .nav-links a {
      text-decoration: none;
      color: white;
      font-weight: 500;
      transition: color 0.3s ease;
    }

    .nav-links a:hover {
      color: #38bdf8;
    }

    /* ===== HERO SECTION ===== */
    .hero {
      height: 90vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      text-align: center;
      padding: 0 20px;
      color: white;
      background: 
        linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.8)),
        url("https://images.fastcompany.com/image/upload/f_webp,q_auto,c_fit/wp-cms/uploads/2022/09/p-1-90788310-why-this-tech-leader-thinks-employee-tracking-software-is-a-really-bad-idea-1.jpg")
        center/cover no-repeat;
    }

    .hero h1 {
      font-size: 3rem;
      margin-bottom: 15px;
      font-weight: 700;
      text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.6);
    }

    .hero p {
      font-size: 1.2rem;
      margin-bottom: 30px;
      opacity: 0.9;
      text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.6);
    }

    /* ===== SEARCH BOX ===== */
    .search-box {
      display: flex;
      background: white;
      border-radius: 50px;
      padding: 10px;
      width: 90%;
      max-width: 600px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
    }

    .search-box input {
      flex: 1;
      border: none;
      outline: none;
      font-size: 1rem;
      padding: 12px 20px;
      border-radius: 50px;
    }

    .search-box button {
      background: #2563eb;
      color: white;
      border: none;
      padding: 12px 25px;
      border-radius: 50px;
      cursor: pointer;
      font-size: 1rem;
      transition: background 0.3s ease;
    }

    .search-box button:hover {
      background: #1e40af;
    }

    /* ===== FOOTER ===== */
    footer {
      background: #0f172a;
      color: white;
      text-align: center;
      padding: 20px;
      font-size: 0.9rem;
    }

    /* ===== RESPONSIVE ===== */
    @media (max-width: 768px) {
      nav {
        flex-direction: column;
        gap: 10px;
        padding: 15px 20px;
      }

      .nav-links {
        flex-wrap: wrap;
        justify-content: center;
      }

      .hero h1 {
        font-size: 2.3rem;
      }

      .hero p {
        font-size: 1rem;
      }

      .search-box {
        flex-direction: column;
        gap: 10px;
        padding: 15px;
      }

      .search-box input,
      .search-box button {
        width: 100%;
        border-radius: 12px;
      }
    }
  </style>
</head>

<body>
<body>

  <!-- ===== HERO SECTION ===== -->
  <section class="hero">
    <h1>Empower Your Team with Smart Management</h1>
    <p>Streamline your employee operations with a modern, intuitive system designed for efficiency and accuracy.</p>

    <!-- Search Box -->
    <div class="search-box">
      <input type="text" placeholder="Search Employee by ID or Name..." />
      <button>Search</button>
    </div>
  </section>

  <!-- ===== FEATURES SECTION ===== -->
  <section class="features" style="padding: 80px 20px; background: #f8fafc; text-align: center;">
    <h2 style="font-size: 2.5rem; margin-bottom: 50px; color: #0f172a; font-weight: 700; letter-spacing: 0.5px;">Core Features</h2>
    
    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 35px; max-width: 1100px; margin: 0 auto;">
      
      <div style="background: white; border-radius: 16px; padding: 30px; box-shadow: 0 10px 25px rgba(0,0,0,0.1); transition: transform 0.3s ease, box-shadow 0.3s ease; cursor: pointer;">
        <div style="font-size: 2.5rem; color: #2563eb; margin-bottom: 15px;">👤</div>
        <h3 style="color: #1e293b; font-size: 1.4rem; margin-bottom: 12px; font-weight: 600;">Quick Employee Registration</h3>
        <p style="color: #475569; line-height: 1.6;">Add new employees effortlessly with a seamless onboarding form that ensures precision and speed.</p>
      </div>

      <div style="background: white; border-radius: 16px; padding: 30px; box-shadow: 0 10px 25px rgba(0,0,0,0.1); transition: transform 0.3s ease, box-shadow 0.3s ease; cursor: pointer;">
        <div style="font-size: 2.5rem; color: #0ea5e9; margin-bottom: 15px;">🔍</div>
        <h3 style="color: #1e293b; font-size: 1.4rem; margin-bottom: 12px; font-weight: 600;">Smart Search & Filter</h3>
        <p style="color: #475569; line-height: 1.6;">Find employees instantly using smart filters, sorting, and real-time search capabilities.</p>
      </div>

      <div style="background: white; border-radius: 16px; padding: 30px; box-shadow: 0 10px 25px rgba(0,0,0,0.1); transition: transform 0.3s ease, box-shadow 0.3s ease; cursor: pointer;">
        <div style="font-size: 2.5rem; color: #16a34a; margin-bottom: 15px;">💾</div>
        <h3 style="color: #1e293b; font-size: 1.4rem; margin-bottom: 12px; font-weight: 600;">Secure Data Management</h3>
        <p style="color: #475569; line-height: 1.6;">Safeguard employee information with encrypted storage and secure access controls.</p>
      </div>

      <div style="background: white; border-radius: 16px; padding: 30px; box-shadow: 0 10px 25px rgba(0,0,0,0.1); transition: transform 0.3s ease, box-shadow 0.3s ease; cursor: pointer;">
        <div style="font-size: 2.5rem; color: #eab308; margin-bottom: 15px;">📊</div>
        <h3 style="color: #1e293b; font-size: 1.4rem; margin-bottom: 12px; font-weight: 600;">Insightful Analytics</h3>
        <p style="color: #475569; line-height: 1.6;">Gain a 360° view of employee performance and organizational efficiency through real-time analytics.</p>
      </div>
    </div>
  </section>

  <!-- ===== ABOUT SECTION ===== -->
  <section class="about" style="padding: 80px 20px; background: linear-gradient(135deg, #e2e8f0, #f8fafc); text-align: center;">
    <div style="max-width: 850px; margin: 0 auto;">
      <h2 style="font-size: 2.3rem; color: #0f172a; margin-bottom: 25px; font-weight: 700;">About Emp_Mrgt</h2>
      <p style="color: #334155; font-size: 1.1rem; line-height: 1.8;">
        Emp_Mrgt is a comprehensive Employee Management System designed to simplify workforce administration. 
        Built with modern web technologies, it allows organizations to manage employee data, track performance, 
        and streamline operations — all from a single intuitive dashboard.
      </p>
      <button style="margin-top: 30px; background: #2563eb; color: white; padding: 12px 30px; border: none; border-radius: 30px; font-size: 1rem; font-weight: 500; cursor: pointer; transition: all 0.3s ease;">
        Learn More
      </button>
    </div>
  </section>

  <!-- ===== CONTACT SECTION ===== -->
  <section style="padding: 80px 20px; background: #0f172a; color: white; text-align: center;">
    <h2 style="font-size: 2rem; margin-bottom: 25px; color: #38bdf8;">Get in Touch</h2>
    <p style="max-width: 700px; margin: 0 auto 40px; color: #cbd5e1; font-size: 1.1rem;">
      Have questions or feedback? We're here to help. Contact our support team for assistance with any queries.
    </p>
    <button style="background: #38bdf8; color: #0f172a; padding: 12px 35px; border-radius: 30px; border: none; font-weight: 600; cursor: pointer; transition: background 0.3s ease;">
      Contact Us
    </button>
  </section>

  <!-- ===== FOOTER ===== -->
  <footer style="background: #0f172a; color: #cbd5e1; text-align: center; padding: 25px; font-size: 0.95rem;">
    © 2025 CareerConnect. All rights reserved. | Designed by <strong style="color: #38bdf8;">Akshay Jadhav</strong>
  </footer>

  <!-- ===== SCRIPT ===== -->
  <script>
    // Navbar scroll effect
    window.addEventListener("scroll", () => {
      const navbar = document.getElementById("navbar");
      if (window.scrollY > 50) {
        navbar.classList.add("scrolled");
      } else {
        navbar.classList.remove("scrolled");
      }
    });

    // Smooth card hover animation
    const cards = document.querySelectorAll('.features div');
    cards.forEach(card => {
      card.addEventListener('mouseenter', () => {
        card.style.transform = 'translateY(-8px)';
        card.style.boxShadow = '0 12px 30px rgba(37,99,235,0.2)';
      });
      card.addEventListener('mouseleave', () => {
        card.style.transform = 'translateY(0)';
        card.style.boxShadow = '0 10px 25px rgba(0,0,0,0.1)';
      });
    });
  </script>

</body>

  	

  
</body>
</html>
