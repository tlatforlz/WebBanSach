<%-- 
    Document   : index
    Created on : Nov 18, 2011, 11:05:02 AM
    Author     : Crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
    
    <%@include  file="header.jsp" %>
    
       <div class="center_content">
       	<div class="left_content">
        	
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Sách Nổi Bật</div>
        
        	<div class="feat_prod_box">
                    <%@include file="sachnoibat.jsp" %>
                    
            <div class="clear"></div>
            </div>	
            
           <div class="title"><span class="title_icon"><img src="images/bullet2.gif" alt="" title="" /></span>Sách Mới</div> 
            
           <div class="new_products">

                      <%@ include file="sachmoi.jsp" %>
            </div> 
          
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content">
              <div class="account_box">
            <c:if test="${sessionScope['tendaydu']!=null}">
                <b>Xin chào bạn :</b> <h3><font color="red">${sessionScope['tendaydu']}</font></h3>
        </c:if>
        <c:if test="${sessionScope['tendaydu']!=null}">
            <a href="logoutprocess">Logout</a>
        </c:if>
            </div>

            
        <%@include file="rightcontent.jsp" %>
        
        </div><!--end of right content-->
       
       <div class="clear"></div>
       </div><!--end of center content-->
              
       <%@include file="footer.jsp" %>
    
</div>

</body>
    <%@include file="quangcaotruot2ben.jsp" %>
</html>