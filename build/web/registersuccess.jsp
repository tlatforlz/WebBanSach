<%-- 
    Document   : registersuccess
    Created on : Dec 5, 2011, 9:40:30 AM
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
            <div align="center">
               <font  color="red" size="3"><strong>Đăng kí thành công</strong></font>
               <p></p>
               <font  color="red" size="3"><strong>Mời bạn <a href="myaccount.jsp">đăng nhập</a></strong></font>
            </div>

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
