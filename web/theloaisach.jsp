<%-- 
    Document   : theloaisach
    Created on : Dec 9, 2011, 4:10:26 PM
    Author     : crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Online</title>
    </head>
    <body>
        <%--<%@include file="connect.jsp"%>--%>
       <%! 
       String tl = "select TenTL, MaTL from THELOAI"; 
                   int i;
       %>
       <%
            rs = st.executeQuery(tl);
            if(rs!=null)
            {
                for(i=1;rs.next();i++)
                                {
                 out.println("<li><a href='chitiettheloai.jsp?MaTL="+rs.getString(2) +"'>"+ rs.getString(1) +"</a></li>");
                 
                               }
                }
       %>
                
    </body>
</html>
