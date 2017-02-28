<%-- 
    Document   : connect
    Created on : Nov 18, 2011, 11:38:02 AM
    Author     : Crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%
            Connection con;
            Statement st = null;
            ResultSet rs=null;
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=WebBanSach";
            con = DriverManager.getConnection(url, "sa", "123456");
            st = con.createStatement();
           }
        catch(Exception e)
         {
            System.out.println("Error: " + e);
         }
        %>
    </body>
</html>
