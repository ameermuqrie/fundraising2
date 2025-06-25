<%-- 
    Document   : Logout
    Created on : 21 Jun 2025, 11:37:09 PM
    Author     : farajuhaimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logging Out...</title>
</head>
<body>
    <%
        // Prevent caching
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0
        response.setDateHeader("Expires", 0); // Proxies

        // Invalidate the session
        session.invalidate();

        // Redirect to the login page
        response.sendRedirect("index.html");
    %>
</body>
</html>
