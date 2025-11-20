<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Add Employee | Advanced Form</title>

  <!-- Tailwind CSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Tailwind Config -->
  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            dark: '#0f172a',
            glass: 'rgba(255,255,255,0.05)',
            glowBlue: '#00ffff',
            glowPurple: '#9d00ff',
          },
          backgroundImage: {
            'gradient-glow': 'linear-gradient(135deg, #00ffff33, #9d00ff33, #00ffff33, #9d00ff33)',
          },
          animation: {
            float: 'float 6s ease-in-out infinite',
            pulseGlow: 'pulseGlow 4s ease-in-out infinite',
            fadeIn: 'fadeIn 0.8s ease-out',
          },
          keyframes: {
            float: {
              '0%, 100%': { transform: 'translateY(0px)' },
              '50%': { transform: 'translateY(-20px)' },
            },
            pulseGlow: {
              '0%, 100%': { boxShadow: '0 0 20px #00ffff44, 0 0 40px #9d00ff22' },
              '50%': { boxShadow: '0 0 40px #00ffff66, 0 0 80px #9d00ff55' },
            },
            fadeIn: {
              from: { opacity: 0, transform: 'translateY(15px)' },
              to: { opacity: 1, transform: 'translateY(0)' },
            },
          },
        },
      },
    }
  </script>
</head>

<body class="min-h-screen flex items-center justify-center bg-dark relative overflow-hidden text-white font-sans">

  <!-- Animated gradient background -->
  <div class="absolute inset-0 bg-gradient-glow bg-[length:400%_400%] animate-[gradientMove_15s_ease_infinite] blur-[120px] opacity-40"></div>

  <!-- Floating Neon Shapes -->
  <div class="absolute top-20 left-20 w-64 h-64 bg-cyan-500/20 rounded-full blur-3xl animate-float"></div>
  <div class="absolute bottom-20 right-20 w-80 h-80 bg-purple-600/20 rounded-full blur-3xl animate-float"></div>

  <!-- Main Form Card -->
  <main class="relative z-10 w-full max-w-xl bg-glass backdrop-blur-2xl rounded-3xl border border-white/10 p-10 shadow-2xl animate-fadeIn">

    <!-- JSP Dynamic Message -->
    <%
      String msg = request.getParameter("msg");
      if (msg != null) {
          if (msg.equals("success")) {
    %>
      <div class="bg-emerald-500/20 border border-emerald-400/40 text-emerald-300 rounded-lg px-4 py-3 mb-6 text-center animate-fadeIn">
        ✅ Employee added successfully!
      </div>
    <%
          } else if (msg.equals("error")) {
    %>
      <div class="bg-rose-500/20 border border-rose-400/40 text-rose-300 rounded-lg px-4 py-3 mb-6 text-center animate-fadeIn">
        ❌ Error while adding employee. Please try again.
      </div>
    <%
          }
      }
    %>

    <!-- Header -->
    <div class="text-center mb-8">
      <h1 class="text-4xl font-extrabold bg-gradient-to-r from-cyan-400 via-blue-400 to-purple-500 bg-clip-text text-transparent">
        Add Employee
      </h1>
      <p class="text-slate-400 text-sm mt-2">Enter details below to add a new employee record.</p>
    </div>

    <!-- Employee Form -->
    <form action="Register" method="post" class="space-y-5">

      <!-- Form Field -->
      <div class="relative">
        <input type="number" id="empId" name="id" required
          class="peer w-full bg-transparent border border-white/20 rounded-lg px-3 pt-5 pb-2 focus:border-cyan-400 focus:ring-0 outline-none transition-all placeholder-transparent"
          placeholder="Employee ID" />
        <label for="empId"
          class="absolute left-3 top-2.5 text-sm text-slate-400 transition-all peer-placeholder-shown:top-3 peer-placeholder-shown:text-base peer-focus:top-1 peer-focus:text-cyan-300 peer-focus:text-sm">
          Employee ID
        </label>
      </div>

      <div class="relative">
        <input type="text" id="name" name="name" required
          class="peer w-full bg-transparent border border-white/20 rounded-lg px-3 pt-5 pb-2 focus:border-cyan-400 focus:ring-0 outline-none transition-all placeholder-transparent"
          placeholder="Full Name" />
        <label for="name"
          class="absolute left-3 top-2.5 text-sm text-slate-400 transition-all peer-placeholder-shown:top-3 peer-placeholder-shown:text-base peer-focus:top-1 peer-focus:text-cyan-300 peer-focus:text-sm">
          Full Name
        </label>
      </div>

      <div class="relative">
        <input type="text" id="dept" name="dept" required
          class="peer w-full bg-transparent border border-white/20 rounded-lg px-3 pt-5 pb-2 focus:border-cyan-400 focus:ring-0 outline-none transition-all placeholder-transparent"
          placeholder="Department" />
        <label for="dept"
          class="absolute left-3 top-2.5 text-sm text-slate-400 transition-all peer-placeholder-shown:top-3 peer-placeholder-shown:text-base peer-focus:top-1 peer-focus:text-cyan-300 peer-focus:text-sm">
          Department
        </label>
      </div>

      <div class="relative">
        <input type="number" id="salary" name="salary" step="0.01" required
          class="peer w-full bg-transparent border border-white/20 rounded-lg px-3 pt-5 pb-2 focus:border-cyan-400 focus:ring-0 outline-none transition-all placeholder-transparent"
          placeholder="Salary" />
        <label for="salary"
          class="absolute left-3 top-2.5 text-sm text-slate-400 transition-all peer-placeholder-shown:top-3 peer-placeholder-shown:text-base peer-focus:top-1 peer-focus:text-cyan-300 peer-focus:text-sm">
          Salary
        </label>
      </div>

      <div class="relative">
        <input type="text" id="phone" name="phone"   required
          class="peer w-full bg-transparent border border-white/20 rounded-lg px-3 pt-5 pb-2 focus:border-cyan-400 focus:ring-0 outline-none transition-all placeholder-transparent"
          placeholder="Phone Number" />
        <label for="phone"
          class="absolute left-3 top-2.5 text-sm text-slate-400 transition-all peer-placeholder-shown:top-3 peer-placeholder-shown:text-base peer-focus:top-1 peer-focus:text-cyan-300 peer-focus:text-sm">
          Phone Number
        </label>
      </div>

      <div class="relative">
        <input type="email" id="email" name="email" required
          class="peer w-full bg-transparent border border-white/20 rounded-lg px-3 pt-5 pb-2 focus:border-cyan-400 focus:ring-0 outline-none transition-all placeholder-transparent"
          placeholder="Email" />
        <label for="email"
          class="absolute left-3 top-2.5 text-sm text-slate-400 transition-all peer-placeholder-shown:top-3 peer-placeholder-shown:text-base peer-focus:top-1 peer-focus:text-cyan-300 peer-focus:text-sm">
          Email
        </label>
      </div>

      <div class="relative">
        <input type="password" id="password" name="password" required minlength="6"
          class="peer w-full bg-transparent border border-white/20 rounded-lg px-3 pt-5 pb-2 focus:border-cyan-400 focus:ring-0 outline-none transition-all placeholder-transparent"
          placeholder="Password" />
        <label for="password"
          class="absolute left-3 top-2.5 text-sm text-slate-400 transition-all peer-placeholder-shown:top-3 peer-placeholder-shown:text-base peer-focus:top-1 peer-focus:text-cyan-300 peer-focus:text-sm">
          Password
        </label>
      </div>

      <!-- Buttons -->
      <div class="flex gap-3 pt-4">
        <button type="submit"
          class="w-1/2 bg-gradient-to-r from-cyan-500 to-indigo-500 text-white font-semibold py-2 rounded-lg hover:scale-105 transition-transform animate-pulseGlow">
          Submit
        </button>
        <button type="reset"
          class="w-1/2 border border-white/20 text-slate-300 hover:bg-white/10 transition-all rounded-lg py-2">
          Reset
        </button>
      </div>

      <!-- Login Redirect -->
      <p class="text-center text-sm text-slate-400 mt-5">
        Already registered?
        <a href="login.jsp" class="text-cyan-400 hover:underline">Login here</a>
      </p>
    </form>
  </main>

  <!-- Tailwind Gradient Animation Keyframes -->
  <style>
    @keyframes gradientMove {
      110%, 100% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
    }
  </style>

</body>
</html>
