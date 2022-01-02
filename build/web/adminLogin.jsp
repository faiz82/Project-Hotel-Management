<%-- 
    Document   : adminLogin
    Created on : Dec 27, 2021, 10:10:22 PM
    Author     : Ayeh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String username = request.getParameter( "username");
            String password = request.getParameter("password");
            if (username != null && password != null) 
            {
                if (username.equals("admin") && password.equals("admin")) 
                {
                    response.sendRedirect("dashboard.jsp");
                } 
                else 
                {
                    out.println("Invalid user or password");
                }
            } 
            else 
            {
                out.println( "Empty Username or password");
            }
        %>
    </body>
</html>
