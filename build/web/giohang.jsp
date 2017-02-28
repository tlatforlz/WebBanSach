<%-- 
    Document   : chitietsach
    Created on : Dec 4, 2011, 4:11:48 PM
    Author     : crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css" />

        <%@include file="scripts.jsp" %>
        
        <script type="text/javascript" src="image-button.js"></script>
        
<script type="text/javascript">
imageButtonAdd('image_button');
</script>

    </head>
    <body>
        <%@include file="connect.jsp" %>
        
        <%
            String action=request.getParameter("Submit");
//            if(action == "xoa")
  //      {
                  String id=request.getParameter("id");
                  
            if(id!=null)
            {
               cart.removeItem(id);
            }
    //    }
         /*   else 
                if(action == "Sửa")
           {
            String id=request.getParameter("id");
            int quantity=Integer.parseInt(request.getParameter("quantity"));
            
            if(id!=null)
             {
               cart.updateQuantity(id, quantity);
               float total=cart.getcost();
             }
           }
 * */
        %>
      
        <div id="wrap">
            
            <%@include file="header.jsp" %>
       <div class="center_content">
       <div class="left_content">
             <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Giỏ Hàng Của Bạn</div>
           <table width="470" border="1" cellspacing="0" cellpadding="2" border="0">
            <tr>
                <th>Tên Sách</th>
                <th>Giá Bìa</th>
                <th>Số Lượng</th>
                <th></th>
            </tr>  
                <%
                Enumeration e=cart.getEnumeration();
                String[] tmpItem;
                
                while(e.hasMoreElements()){
                    tmpItem=(String[])e.nextElement();
                    float total=cart.getcost();
            %>
            <form action="giohang.jsp">
            <tr>
                <td width="280"><%=tmpItem[1] %></td>
                <td width="100" align="center"><%=tmpItem[2]%> VNĐ</td>
                <td width="10" align="center"><input type="text" name="quantity" value="<%=tmpItem[3]%>"></input</td>
            <td  width="10"><input type="submit" name="Submit" value="xoa"></td>
            <td  width="10"><input type="submit" name="Submit" value="Sửa"></td>
            <input type="hidden" name="id" value="<%=tmpItem[0] %>">
            <input type="hidden" name="desc" value="<%=tmpItem[1] %>">
            <input type="hidden" name="price" value="<%=tmpItem[2] %>">
            </tr>
            <%-- <tr><td align="right" colspan="3"><input type="textbox" name="price"  size="5" value="<%=total %>"></td></tr> --%>
            <%
                }
            %>
         <%--   <tr><td align="right" colspan="3"><input type="textbox" name="price"  size="5" value='"<%=total %>'></td></tr>--%>
             
           </table>
            </form>
    </center>
    <br/>
    <table  width="450" >
        <tr><td><a href="sach.jsp"><img src="images/tieptuc.jpg" /></a></td>
            <td align="right"><a href="thanhtoan.jsp"><img src="images/thanhtoan.jpg" /></a></td>
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
      <%@include file="quangcaotruot2ben.jsp" %>
</html>
