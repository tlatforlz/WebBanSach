<%-- 
    Document   : maketiep
    Created on : Dec 4, 2011, 4:57:36 PM
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
         <%@include file="connect.jsp" %>
        <% 
            rs = st.executeQuery(select); 
            if(rs!=null)
            {
                while(rs.next())
                {
                    String ma=rs.getString(1);
                    String chuoidau=ma.substring(0,2);
                    String chuoicuoi=ma.substring(2,5);
                    String soketiep=String.valueOf(Integer.parseInt(chuoicuoi)+1);  
                    String maketiep;
                    if(Integer.parseInt(soketiep) >= 100)
                        maketiep=chuoidau+soketiep;
                     else
                        maketiep=chuoidau+"0"+soketiep; 
        %>
    
    </body>
</html>
