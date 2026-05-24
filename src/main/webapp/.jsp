<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.SupplierModel" %>
<%
    SupplierModel supplier = (SupplierModel) session.getAttribute("supplier");
    if (supplier == null) {
        response.sendRedirect("SupplierLogin.jsp");
        return;
    }
    String initial = supplier.getSupplierusername() != null && !supplier.getSupplierusername().isEmpty()
                     ? supplier.getSupplierusername().substring(0, 1).toUpperCase()
                     : "S";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Supplier Panel</title>
    <style>
        .container {
            display: flex;
            height: 100vh;
            overflow: hidden;
        }

        .sidebar {
            width: 250px;
            background-color: #2c3e50;
            color: white;
            height: 100vh;
            padding: 20px 0;
            flex-shrink: 0;
        }

        .sidebar h2 {
            padding-left: 20px;
            margin-bottom: 20px;
        }

        .sidebar-button {
            display: block;
            width: 100%;
            padding: 12px 20px;
            background: none;
            border: none;
            color: white;
            text-align: left;
            cursor: pointer;
            font-size: 16px;
            border-radius: 4px;
            transition: all 0.3s;
            text-decoration: none;
        }

        .sidebar-button:hover {
            background-color: #34495e;
        }

        .sidebar-button.active {
            background-color: #3498db;
            font-weight: bold;
        }

        .main-content {
            flex: 1;
            padding: 20px;
            overflow-y: auto;
            background-color: #f5f5f5;
            height: 100vh;
            box-sizing: border-box;
        }

        .loaded-content {
            width: 100%;
            min-height: calc(100% - 40px);
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            padding: 20px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Supplier Dashboard</h2>
        <button class="sidebar-button active" data-target="SupplierDashboard.jsp">Dashboard</button>
        <button class="sidebar-button" data-target="SupplierSparepartInsert.jsp">Add Spare Parts</button>
        <button class="sidebar-button" data-target="SupplierSparePartGetAllServlet">Manage Spare parts</button>
        <button class="sidebar-button" data-target="SupplierViewOrder.jsp">View Company Orders</button>
        <button class="sidebar-button" data-target="SupplierNotificationHistoryServlet">Order History</button>
    </div>

    <!-- Main Content -->
    <div class="main-content" id="dynamic-content">
        <div class="loaded-content"></div>
    </div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const buttons = document.querySelectorAll(".sidebar-button");
        const content = document.querySelector(".loaded-content");

        function loadPage(page) {
            fetch(page)
                .then(response => response.text())
                .then(html => {
                    content.innerHTML = html;
                })
                .catch(() => {
                    content.innerHTML = "<p>Error loading page.</p>";
                });
        }

        // Load default
        loadPage("SupplierDashboard.jsp");

        // Set active & load on click
        buttons.forEach(btn => {
            btn.addEventListener("click", () => {
                buttons.forEach(b => b.classList.remove("active"));
                btn.classList.add("active");
                loadPage(btn.getAttribute("data-target"));
                if (page.endsWith(".jsp")) {
                    loadPage(page);
                } else {
                    // Otherwise, treat it as a full-page servlet redirect
                    window.location.href = page;
                }
            });
        });
    });
</script>
</body>
</html>



