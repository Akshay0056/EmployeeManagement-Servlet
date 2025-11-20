<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Login | CareerConnect</title>

  <!-- Tailwind CSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

  <style>
    body {
      font-family: 'Poppins', sans-serif;
    }

    /* === Dynamic Background Animation === */
    body {
      background: linear-gradient(-45deg, #0f172a, #1e293b, #164e63, #0ea5e9);
      background-size: 400% 400%;
      animation: gradientShift 10s ease infinite;
    }

    @keyframes gradientShift {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }
  </style>
</head>

<body class="min-h-screen flex items-center justify-center">

  <!-- Login Container -->
  <div class="relative bg-gray-900/60 backdrop-blur-xl border border-gray-700/40 rounded-2xl p-8 sm:p-10 w-[90%] max-w-md shadow-2xl text-center hover:scale-[1.02] transition-transform duration-300">

    <!-- Logo -->
    <img 
      src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYN4scLAOk6JcRBGzBZrq9N4zSHo6oOB_aycIUGb6FlF48fK8XsTr1a6AJZgMuYrduBeY&usqp=CAU"
      alt="CareerConnect Logo"
      class="mx-auto w-20 h-20 rounded-full border border-cyan-500/50 shadow-lg mb-4 hover:scale-105 transition-transform duration-500"
    />

    <!-- Title -->
    <h2 class="text-2xl font-semibold text-cyan-400 mb-6 tracking-wide">Employee Login</h2>

    <!-- Login Form -->
    <form action="login" method="post" class="flex flex-col gap-4 text-left">

      <!-- Email -->
      <div>
        <label class="text-sm text-gray-300">Email</label>
        <input 
          type="text" 
          name="email" 
          placeholder="Enter your email" 
          required 
          class="mt-1 w-full px-4 py-2 rounded-lg bg-gray-800/60 border border-gray-700 text-gray-100 placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-cyan-500 focus:border-transparent transition"
        />
      </div>

      <!-- Password -->
      <div>
        <label class="text-sm text-gray-300">Password</label>
        <input 
          type="password" 
          name="password" 
          placeholder="Enter your password" 
          required 
          class="mt-1 w-full px-4 py-2 rounded-lg bg-gray-800/60 border border-gray-700 text-gray-100 placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-cyan-500 focus:border-transparent transition"
        />
      </div>

      <!-- Submit Button -->
      <button 
        type="submit" 
        class="mt-4 w-full py-3 rounded-lg bg-gradient-to-r from-cyan-600 to-blue-700 hover:from-cyan-500 hover:to-blue-600 text-white font-semibold tracking-wide shadow-lg shadow-cyan-500/30 hover:shadow-cyan-400/40 transition duration-300"
      >
        Login
      </button>
    </form>

    <!-- Register Link -->
    <p class="mt-5 text-sm text-gray-400">
      Don’t have an account? 
      <a href="Register.jsp" class="text-cyan-400 hover:text-cyan-300 font-medium transition">Register here</a>
    </p>
  </div>

  <!-- Floating Glow Effects -->
  <div class="absolute top-10 left-10 w-32 h-32 bg-cyan-500/20 blur-3xl rounded-full animate-pulse"></div>
  <div class="absolute bottom-10 right-10 w-40 h-40 bg-blue-500/20 blur-3xl rounded-full animate-pulse delay-2000"></div>

</body>
</html>
