<%-- 
    Document   : chitiettheloai
    Created on : Dec 9, 2011, 11:00:19 PM
    Author     : crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <script src="rainbow.js">

</script>
    </head>
    <body>
        <div id="wrap">
            <%@include file="header.jsp" %>
       <div class="center_content">
       <div class="left_content">
        
        <%@include file="connect.jsp" %>
       <% 
            String colname1 = request.getParameter("MaTL");
            String cttl = "select s.UrlHinh, s.MaSach, s.TenSach,  s.Gia from SACH s , THELOAI tl where s.MaTL = tl.MaTL and tl.MaTL = '"+colname1+"'";
            
            rs = st.executeQuery(cttl);
        %>
            <table boder="0" width="150" height="150" cellspacing="30" >
                            <tr>
                <%
                    if(rs!=null)
                   {    
                            int dem = 0;
                        //for(int i=1;rs.next();i++)
                        for(int i=1;rs.next();i++)
                        {
                            
                            out.println("<td><center><img src='hinhsach/"+ rs.getString(1)+"' width='110' height='110'/><p></p> <a href='chitietsach.jsp?MaSach=" +rs.getString(2)+"'> " + rs.getString(3) +"</a><br/><b>Gia</b> : "+ rs.getString(4) +" VNĐ</center>");
                           
                          
                            dem ++;
                           if(dem%3==0)
                            out.println("<tr>");
                        }   
                   } 
                %>
                            </tr>
            </table>
       
       </div>
         <div class="right_content">
             <%@include file="rightcontent.jsp" %>
        
        </div><!--end of right content-->
        
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <%@include file="footer.jsp" %>
    

</div>

    </body>
</html>
