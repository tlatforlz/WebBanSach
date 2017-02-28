<%-- 
    Document   : chitietsach
    Created on : Dec 4, 2011, 4:11:48 PM
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

        <%@include file="scripts.jsp" %>
        
        <script type="text/javascript" src="image-button.js"></script>
        
<script type="text/javascript">
imageButtonAdd('image_button');
</script>

<style type="text/css">
input.image_button
{
width: 120px;
height: 25px;
margin: 0px;
border: none;
padding: 0px;
background: url('giohang1.png');
}
</style>

    </head>
    <body>
         <%
            String id=request.getParameter("id");
            if(id!=null){
                String desc=request.getParameter("desc");
                Float price=new Float(request.getParameter("price"));
                
                cart.addItem(id, desc, price.floatValue(), 1);
            }
        %>
        
        
        <div id="wrap">
            <%@include file="header.jsp" %>
       <div class="center_content">
       <div class="left_content">
          <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Chi Tiết Sách</div>
        <%@include file="connect.jsp" %>
        <%
              
              String colname = request.getParameter("MaSach");
              
            //String cts =  "select cts.SoTrang, cts.TrongLuong, cts.HinhThucBia, cts.KichThuoc, cts.NamXB, cts.GioiThieu,s.TenSach, s.Gia, s.SoLanXem, s.UrlHinh, tg.TenTG, NXB.TenNXB, dg.TenDichGia"
                   //+ " from CHITIETSACH cts, SACH s, NXB nxb, TACGIA tg, DICHGIA dg,SACH_DICHGIA s_dg, SACH_TACGIA s_tg "
          
                     //+ "where cts.MaSach=s.MaSach and cts.MaSach=s_tg.MaSach and tg.MaTG=s_tg.MaTG and s_dg.MaDichGia=dg.MaDichGia and s.MaNXB=NXB.MaNXB and cts.MaSach='"+colname+"'";
          String cts="SELECT s.UrlHinh, tg.TenTG, dg.TenDichGia, s.TenSach, nxb.TenNXB, cts.SoTrang, cts.KichThuoc, cts.TrongLuong, s.Gia, cts.HinhThucBia, YEAR(cts.NamXB), s.SoLanXem, cts.GioiThieu "
                  + "FROM SACH s, CHITIETSACH cts, NXB nxb, SACH_TACGIA stg, SACH_DICHGIA sdg, TACGIA tg, DICHGIA dg "
                 + "WHERE s.MaSach=cts.MaSach AND s.MaNXB=nxb.MaNXB AND s.MaSach=stg.MaSach AND tg.MaTG=stg.MaTG AND s.MaSach=sdg.MaSach AND dg.MaDichGia=sdg.MaDichGia  AND cts.MaSach='"+colname+"'";
           String scl = "SELECT s.UrlHinh, s.MaSach From Sach s INNER JOIN THELOAI tl ON s.MaTL=tl.MaTL WHERE s.MaTL=(SELECT MaTL FROM SACH WHERE MaSach='"+colname+"')";  
          rs = st.executeQuery(cts);
        %>
        <%
          if(rs!=null)
            {
             while(rs.next())
            {
                 out.println("<table width='490' border='0' cellpadding='0' cellspacing='0'>");
                     out.println("<tr>");
                     %>
                     <form action=chitietsach.jsp?MaSach=<%=colname %> method="post">
                     <%
                     out.println("<td width='210' rowspan='12'><img src='hinhsach/"+ rs.getString(1)+"' width='170' height='170' /></td></tr>");
                       out.println("<tr>");
                out.println("<td><span style='font-weight:bold' color:'#FF6600'><font size='3'> "+rs.getString(4)+" </font></span></td><br/>");
                         out.println("</tr>");                           
                        out.println("<tr>");
                        out.println("<td><b>Tác Giả</b> : "+rs.getString(2)+" </td>");
                         out.println("</tr>");
                        out.println("<tr><td><b>Dịch Giả</b> : "+rs.getString(3)+" </td>");
                         out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td><b> Nhà Xuất Bản</b> : "+rs.getString(5)+" </td>");
                         out.println("</tr>");
                       out.println("<tr>");
                        out.println("<td><b>Số Trang</b> : "+rs.getString(6)+" </td>");
                         out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td><b>Kích Thước</b> : "+rs.getString(7)+" cm </td>");
                         out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td><b>Trọng Lượng</b> : "+rs.getString(8)+" gram</td>");
                         out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td><b>Giá</b> : "+rs.getString(9)+" VNĐ</td>");
                         out.println("</tr>");                         
                        out.println("<tr>");
                        out.println("<td><b>Hình Thức Bìa</b> : "+rs.getString(10)+" </td>");
                         out.println("</tr>");                         
                        out.println("<tr>");
                        out.println("<td><b>Ngày Xuất Bản</b> : "+rs.getString(11)+" </td>");
                         out.println("</tr>");                         
                        out.println("<tr>");
                        out.println("<td><b>Số Lần Xem</b> : "+rs.getString(12)+" </td>");
                         out.println("</tr>");           
                          out.println("</table><br>");

                          %>
                          <input  class="image_button" id="image_button" type="submit" value="" />
                          <%--            <td><input type="submit" name="Submit" value="Add"></td> --%>
            <input type="hidden" name="id" value="<%=colname %>">
            <input type="hidden" name="desc" value="<%=rs.getString(4)%>">
            <input type="hidden" name="price" value="<%=rs.getString(9)%>">
            </form>
         
                          <%
                          out.println("</tr>");
                          out.println("</table>");
                          out.println("<table>");
                          out.println("<tr>");
                          out.println("<td color='red '> <h3>Gới thiệu nội dung</h3> : " + rs.getString(13)+"</td>");
                          out.println("</tr>");
                          out.println("</table>");
        
            }

            }
   
        
        %>
        
        <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Sách Cùng Loại</div>
        <div class="new_products">
            
        <%@include file="sachcungloai.jsp" %>
           </div> 
        
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
