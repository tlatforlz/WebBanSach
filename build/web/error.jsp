<%-- 
    Document   : error
    Created on : Nov 18, 2011, 12:10:38 PM
    Author     : Crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <font color="red">
            <%=exception.toString() %>
        </font>
    </body>
</html>
