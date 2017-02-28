<%-- 
    Document   : index
    Created on : Nov 18, 2011, 11:05:02 AM
    Author     : Crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
.center_content1{
	width:900px;
	padding:0px 0 0 0;
	background-image: url(images/center_bg2.gif);
	background-repeat: repeat-y;
	background-position: right;
}
.left_content1{
	width:490px;
	float:left;
	padding-top: 20px;
	padding-right: 0;
	padding-bottom: 20px;
	padding-left: 20px;
}
.right_content1{
	width:370px;
	float:left;
	padding-top: 20px;
	padding-right: 0;
	padding-bottom: 20px;
	padding-left: 20px;
}
.feat_prod_box1{
padding:2px 0 10px 10px;
margin:0 5px 5px 0;
border-bottom:1px #b2b2b2 dashed;
clear:both;
}
</style>

<%@include file="scripts.jsp" %>
</head>
<body>
    <%@include file="connect.jsp" %>
<div id="wrap">
    <%@include  file="header.jsp" %>
       <div class="center_content1">
       	<div class="left_content1">
        	
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Sách</div>
        
        	<div class="feat_prod_box1">
                    <%@include file="danhmucsach.jsp" %>
                    
            <div class="clear"></div>
            </div>	
            
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content1">
            
             
                        
             <div class="right_box">
             
             
                    
                 
             </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Danh mục sách</div> 
                
       <%!
       String tl = "select TenTL, MaTL from THELOAI"; 
                   
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
            
             
             
        
        </div><!--end of right content-->
        
       <div class="clear"></div>
       </div><!--end of center content-->
       
       <%@include file="footer.jsp" %>
    
</div>

</body>
       <%@include file="quangcaotruot2ben.jsp" %>   
</html>