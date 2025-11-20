<%@page import="com.servlet.emp.dto.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Employee Details</title>
<!-- Load Tailwind CSS -->
<script src="https://cdn.tailwindcss.com"></script>
<style>
  /* Inter is a clean, modern font for applications */
  body {
    font-family: 'Inter', sans-serif;
  }
  /* Custom utility for the glass effect on the form card */
  .app-card {
    background-color: rgba(30, 41, 59, 0.85); /* Slate-800 with transparency */
    backdrop-filter: blur(12px);
  }
  /* Gradient focus ring for inputs */
  .focus-gradient-ring:focus {
    --tw-ring-color: transparent;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.5); /* blue-600 shadow */
  }
</style>
</head>
<body class="bg-gray-900 min-h-screen flex items-center justify-center p-4 text-white">

<%
// Retrieve the employee object from the request scope
System.out.println("came to edit jsp");
Employee emp = (Employee)request.getAttribute("employee");
if (emp != null) {
    System.out.println("Editing Employee: " + emp.getName());
} else {
    // Handle case where employee object is missing
    System.out.println("Error: Employee object is missing from request.");
    // Optionally redirect or display an error message
}
%>
    
    <!-- Application Card Container -->
    <div class="w-full max-w-xl app-card p-8 md:p-10 rounded-3xl shadow-3xl border border-sky-400/20 transform transition-all hover:shadow-sky-500/10">

        <!-- Header -->
        <h1 class="text-4xl font-extrabold text-transparent bg-clip-text bg-gradient-to-r from-sky-400 to-indigo-500 mb-2">
             Edit Employee Record
        </h1>
        <p class="text-sm text-slate-400 mb-8">
            Update the necessary details for the employee. Ensure all fields are accurate.
        </p>

        <!-- Employee Form -->
        <form action="update" method="post" class="grid grid-cols-1 gap-6" novalidate>

            <% if (emp != null) { %>
            
            <!-- Hidden ID Field -->
            <input id="empId" name="id" type="hidden" value="<%=emp.getEmp_Id()%>" />
            
            <!-- Employee ID Display (Read-Only) -->
            <div>
                <label class="block text-sm font-medium mb-1 text-sky-300">Employee ID (Read Only)</label>
                <div class="w-full rounded-lg bg-slate-700/50 border border-slate-600 px-4 py-2 text-slate-400 cursor-not-allowed">
                    #<%=emp.getEmp_Id()%>
                </div>
            </div>

            <!-- Full Name -->
            <div>
                <label for="name" class="block text-sm font-medium mb-1 text-slate-300">Full Name</label>
                <input id="name" name="name" type="text" value="<%=emp.getName() %>" required minlength="2"
                       class="w-full rounded-lg bg-slate-700 border border-slate-600 px-4 py-2 text-white focus:border-sky-500 focus-gradient-ring transition duration-200"
                       placeholder="e.g., Akshay Jadhav" />
            </div>

            <!-- Department -->
            <div>
                <label for="dept" class="block text-sm font-medium mb-1 text-slate-300">Department</label>
                <input id="dept" name="dept" type="text"  value="<%=emp.getDept() %>" required minlength="2"
                       class="w-full rounded-lg bg-slate-700 border border-slate-600 px-4 py-2 text-white focus:border-sky-500 focus-gradient-ring transition duration-200"
                       placeholder="e.g., Computer Science" />
            </div>

            <!-- Salary -->
            <div>
                <label for="salary" class="block text-sm font-medium mb-1 text-slate-300">Salary</label>
                <input id="salary" name="salary" type="number" value="<%=emp.getSalary() %>" step="0.01" required min="0"
                       class="w-full rounded-lg bg-slate-700 border border-slate-600 px-4 py-2 text-white focus:border-sky-500 focus-gradient-ring transition duration-200"
                       placeholder="e.g., 45000.00" />
            </div>

            <!-- Phone Number -->
            <div>
                <label for="phone" class="block text-sm font-medium mb-1 text-slate-300">Phone Number</label>
                <input id="phone" name="phone" type="text" value="<%=emp.getPhone_No() %>" pattern="\d{10}" required
                       class="w-full rounded-lg bg-slate-700 border border-slate-600 px-4 py-2 text-white focus:border-sky-500 focus-gradient-ring transition duration-200"
                       placeholder="10-digit number (e.g., 9876543210)" />
            </div>

            <!-- Email -->
            <div>
                <label for="email" class="block text-sm font-medium mb-1 text-slate-300">Email Address</label>
                <input id="email" name="email" type="email" value="<%=emp.getEmail() %>" required
                       class="w-full rounded-lg bg-slate-700 border border-slate-600 px-4 py-2 text-white focus:border-sky-500 focus-gradient-ring transition duration-200"
                       placeholder="example@company.com" />
            </div>

            <!-- Password -->
            <div>
                <label for="password" class="block text-sm font-medium mb-1 text-slate-300">Password</label>
                <input id="password" name="password" type="password" value="<%=emp.getPassword() %>" required minlength="6"
                       class="w-full rounded-lg bg-slate-700 border border-slate-600 px-4 py-2 text-white focus:border-sky-500 focus-gradient-ring transition duration-200"
                       placeholder="At least 6 characters" />
            </div>
            
            <% } else { %>
            <!-- Error message if emp is null -->
             <div class="text-red-400 bg-red-900/40 p-4 rounded-lg border border-red-700">
                <p>Employee data not found. Please return to the list and try editing again.</p>
            </div>
            <% } %>

            <!-- Buttons -->
            <div class="flex gap-4 mt-4">
                <button type="submit"
                        class="flex-1 px-6 py-3 rounded-xl bg-gradient-to-r from-sky-500 to-indigo-600 hover:from-sky-400 hover:to-indigo-500 text-white font-bold shadow-lg shadow-sky-500/30 transition-all duration-300 transform hover:scale-[1.02]">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 inline mr-2" viewBox="0 0 20 20" fill="currentColor">
                        <path d="M17.414 2.586a2 2 0 00-2.828 0L7 10.172V13h2.828l7.586-7.586a2 2 0 000-2.828z" />
                        <path fill-rule="evenodd" d="M2 6a2 2 0 012-2h4a1 1 0 010 2H4v10h10v-4a1 1 0 112 0v4a2 2 0 01-2 2H4a2 2 0 01-2-2V6z" clip-rule="evenodd" />
                    </svg>
                    Update Employee
                </button>
            </div>
        </form>
    </div>

</body>
</html>