<%-- 
    Document   : danhmucsach
    Created on : Dec 10, 2011, 8:54:41 AM
    Author     : crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>

        <%--<%@include file="connect.jsp" %>--%>
       <%!
          String dms = "SELECT top 20 UrlHinh, MaSach, TenSach, Gia from Sach ORDER BY TenSach DESC" ;  
          int i;
          
       %>
   <table border='0' height='150' width='150' cellspacing="40" >
           <tr>
       <%  
       int count =0;
       rs = st.executeQuery(dms);
            if(rs!=null)
                { 
                for(i=1; rs.next();i++)
                    //for(int i=1;rs.next();i++)
                    {
                        out.println("<td><center><a href='chitietsach.jsp?MaSach=" +rs.getString(2)+"'><img src='hinhsach/" +rs.getString(1) +"' width='110' height='110'/></a><p></p><a href='chitietsach.jsp?MaSach=" +rs.getString(2)+"'> " + rs.getString(3) +"</a><br/><b>Gia</b> : "+ rs.getString(4) +" VNĐ<br/><a href='chitietsach.jsp?MaSach=" +rs.getString(2)+"'><img src='images/chitiet.jpg' />&nbsp;Xem chi tiết</a></center>");
                        out.println("</td>");                                    
                       count ++;
                       if(count%4==0)
                       out.println("<tr>");
                    }
                       
            }
                    
        
       %>     

          </tr>
       </table>      

        
    </body>
</html>
