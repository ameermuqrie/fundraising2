<%@ page import="java.sql.*" %>
<%@ page import="databases.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
    <title>Database Connection Test</title>
</head>
<body>
    <h2>Database Connection Test</h2>
    <%
        Connection conn = null;
        try {
            conn = DBConnection.getConnection();
            if (conn != null && !conn.isClosed()) {
                out.println("<p style='color:green;'>? Connection successful!</p>");
            } else {
                out.println("<p style='color:red;'>? Connection failed!</p>");
            }
        } catch (Exception e) {
            out.println("<p style='color:red;'>? Error: " + e.getMessage() + "</p>");
        } finally {
            if (conn != null) {
                try { conn.close(); } catch (Exception ignore) {}
            }
        }
    %>
</body>
</html>
