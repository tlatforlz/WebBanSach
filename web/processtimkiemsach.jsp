<%-- 
    Document   : register
    Created on : Dec 5, 2011, 9:22:17 AM
    Author     : HIEP HOANG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Book Online</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<%@include file="scripts.jsp" %>
</head>
<body>
<%@include file="connect.jsp" %>
  
<div id="wrap">
        <%@include file="header.jsp" %> 
       <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Sách Tìm Kiếm Được</div>
             
                   <%--<%@include file="connect.jsp" %>--%>
       <%
                  String tensach=request.getParameter("tensach");
          String tk = "SELECT UrlHinh, MaSach, TenSach, Gia FROM SACH WHERE TenSach like N'%"+tensach+"%'" ;  
          int i;
          
       %>
       
   <table border='0' height='150' width='150' cellspacing="30" >
           <tr>
       <%  
       int count =0;
       rs = st.executeQuery(tk);
            if(rs!=null)
                { 
                for(i=1; rs.next();i++)
                    //for(int i=1;rs.next();i++)
                    {
                        out.println("<td><center><a href='chitietsach.jsp?MaSach=" +rs.getString(2)+"'><img src='hinhsach/" +rs.getString(1) +"' width='110' height='110'/></a><p></p><a href='chitietsach.jsp?MaSach=" +rs.getString(2)+"'> " + rs.getString(3) +"</a><br/><b>Gia</b> : "+ rs.getString(4) +" VNĐ<br/><a href='chitietsach.jsp?MaSach=" +rs.getString(2)+"'><img src='images/chitiet.jpg' />&nbsp;Xem chi tiết</a></center>");
                        out.println("</td>");                                    
                       count ++;
                       if(count%3==0)
                       out.println("<tr>");
                    }
                       
            }
                    
        
       %>     

          </tr>
       </table>      
<%--Ket thuc table thong tin nguoi dung--%>    
           
        <div class="clear"></div>
        </div><!--end of left content-->
        
         <div class="right_content">
            <%@include file="rightcontent.jsp" %>
        </div><!--end of right content-->
       
       <div class="clear"></div>
       </div><!--end of center content-->
              
       <%@include file="footer.jsp" %>

</div>

</body>
       <%@include file="quangcaotruot2ben.jsp" %>
</html>