<%-- 
    Document   : rightcontent
    Created on : Dec 11, 2011, 12:48:36 PM
    Author     : Crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <script type="text/javascript" src="image-button.js"></script>

    </head>
    <body>
                        
                  <div class="cart">

                  <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" />&nbsp;<a href="giohang.jsp"</span>Giỏ hàng :</a></div>
                  <div class="home_cart_content">
                    <%=cart.getNumofItem() %> cuốn Sách | <span class="red">TOTAL: 100$</span>
                  </div>
              
                    </div>
                  <div class="cart">
                  <div class="title"><span class="title_icon"><img src="images/timkiem1.jpg" alt="" title="" />&nbsp;<a href="giohang.jsp"</span>Tìm Kiếm Sách:</a></div>
                  <div class="home_cart_content">
                  <%@include file="search.jsp" %>
                  </div>
                  </div>
                        
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>Promotions</div> 
                    <div class="new_prod_box">
                        <a href="details.html">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                    
                    <div class="new_prod_box">
                        <a href="details.html">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>                    
                    
                    <div class="new_prod_box">
                        <a href="details.html">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>              
             
             </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Danh mục sách</div> 
                
       <%!
       String tl = "select TenTL, MaTL from THELOAI"; 
           int k;        
       %>

       <%
            rs = st.executeQuery(tl);
            if(rs!=null)
            {
                for(k=1;rs.next();k++)
                                {
                 out.println("<li><a href='chitiettheloai.jsp?MaTL="+rs.getString(2) +"'>"+ rs.getString(1) +"</a></li>");
                 
                               }
                }
                %>
                <br/><br/>
             	<div class="title"><span class="title_icon"><img src="images/bullet6.gif" alt="" title="" /></span>Partners</div> 
                
                <ul class="list">
                <li><a href="#">accesories</a></li>
                <li><a href="#">books gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>
                <li><a href="#">books gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>                              
                </ul>  
                
             
             </div>   
           
        
    </body>
</html>
