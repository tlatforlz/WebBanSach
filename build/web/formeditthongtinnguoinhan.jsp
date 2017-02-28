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

<style type="text/css">
input.image_button
{
width: 84px;
height: 22px;
margin: 0px;
border: none;
padding: 0px;
background: url('tieptuc1.jpg');
}
</style>

</head>
<body>
         <%@page import="java.util.Date" %>
        <%@include file="connect.jsp" %>
        <%
            String dienthoai=request.getParameter("dienthoai");
            String select1 = "SELECT TenNguoiNhan, DiaDiemGiaoHang, DienThoai, GhiChu FROM DONHANG WHERE DienThoai='"+dienthoai+"'";
            rs = st.executeQuery(select1);
        %>  
        
<%@include file="connect.jsp" %>
    <script src="js/jquery-1.7.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#dangki").validate(
            {
                rules:
                    {
                        hoten:{required:true, minlength:6},
                        diachi:{required:true, minlength:2},
                        dienthoai: {required: true, digits: true, minlength:10, maxlength:11}
                    },
                    messages:
                        {
                            hoten:{required:"Bạn chưa nhập họ tên người nhận!", minlength:"Họ tên tối thiểu phải có 6 ký tự"},
                            diachi:{required:"Bạn chưa nhập địa chỉ người nhận!", minlength:"Địa chỉ tối thiểu phải có 2 ký tự"},
                            dienthoai:{required:"Bạn chưa nhập số điện thoại", digits:"Vui lòng nhập kiểu số!", minlength:"Số điện thoại phải ít nhất 10 ký số", maxlength:"Số điện thoại nhiều nhất chỉ được 11 ký số"}
                        },
                        submitHandler: function(form){
                            if(confirm("Dữ liệu form đã hợp lệ. Bạn có muốn submit không?"))
                                {
                                    form.submit();
                                }
                        }
            });
        });
    </script>
    <style type="text/css">
        label.error{color:#FF0000;}
        input.error{border: 2px solid #FF0000;color:#0000FF; border-style: ridge; }
    </style>
    
<div id="wrap">
        <%@include file="header.jsp" %> 
       <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Thanh Toán</div>

        	<div class="feat_prod_box_details">
              	<div class="contact_form">
                <div class="form_subtitle">Thông Tin Giao Hàng</div>
                 <%--Table thong tin nguoi dung--%>
          <form id="dangki" name="form1" method="post" action="processeditthongtinnguoinhan.jsp" >
<table width="300" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
 
  <tr>
       <%
            if(rs!=null)
                
            { 
                while(rs.next())
                {
                    String tennguoinhan = rs.getString(1);
                    String diachi = rs.getString(2);
                    String dienthoai1=rs.getString(3);
                    String ghichu = rs.getString(4);
         %>
      
    <td height="30" class="thongtin"><div align="right"><strong>Họ Tên:</strong></div></td>
    <td><label>
      <input name="hoten" type="text" class="textbox" id="hoten" value="<%=tennguoinhan%>" />
    </label></td>
  </tr>
  
  <tr>
    <td height="30" class="thongtin"><div align="right"><strong>Địa Chỉ:</strong></div></td>
    <td><label>
      <input name="diachi" type="text" class="textbox" id="diachi" value="<%=diachi%>" />
    </label></td>
  </tr>
  <tr>
    <td height="30" class="thongtin"><div align="right"><strong>Điện Thoại:</strong></div></td>
    <td><label>
      <input name="dienthoai" type="text" class="textbox" id="dienthoai" value="<%=dienthoai1%>" />
    </label>   </td>
  </tr>
  <tr>
    <td height="30" class="thongtin"><div align="right"><strong>Ghi Chú:</strong></div></td>
    <td><label>
      <input name="ghichu" type="text" class="textbox" id="ghichu" value="<%=ghichu%>" />
    </label>   </td>
  </tr>
  <tr>
  	<td></td>
    <td height="40"><label>
       <div align="center">
         <input  class="image_button" id="image_button" type="submit" value="" />
        </div>
    </label></td>
  </tr>
</table>
</form>
<%--Ket thuc table thong tin nguoi dung--%>    

         <%
                }
            }
        %>
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