<%-- 
    Document   : myaccount
    Created on : Nov 30, 2011, 11:42:43 PM
    Author     : HIEP HOANG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <%@include file="connect.jsp" %>
<div id="wrap">    
        <%@include file="header.jsp" %>    
       <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My account</div>
        
        	<div class="feat_prod_box_details">
            
              	<div class="contact_form">
                <div class="form_subtitle">Đăng nhập</div>
                 <form action="loginprocess" method="post">
                     ${requestScope['msg']}
                    <div class="form_row">
                    <label class="contact"><strong>Username:</strong></label>
                    <input type="text" name="txtUser" value="${cookie['User'].value}"/>
                    <font color="red">${requestScope.userNameloi}</font>
                    </div>  


                    <div class="form_row">
                    <label class="contact"><strong>Password:</strong></label>
                    <input type="password" name="txtPass" value="${cookie['Pass'].value}"/>
                    <font color="red">${requestScope.userpasswordloi}</font>
                    </div>                     

                    <div class="form_row">
                        <div class="terms">
                        <input type="checkbox" name="chkGhiNho" ${empty cookie['User'] ? '': 'checked'} />
                        Remember me
                        </div>
                    </div> 

                    
                    <div class="form_row">
                    <input type="submit" value="Login"/>
                    </div>   
                    
                  </form>     
                    
                </div>  
            
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
