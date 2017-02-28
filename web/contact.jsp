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
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="style.css" />

<%@include file="scripts.jsp" %>

</head>
<body>
<%@include file="connect.jsp" %>
    <script src="js/jquery-1.7.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#dangki").validate(
            {
                rules:
                    {
                        tendn: {required:true, minlength:5, maxlength:30},
                        matkhau:{required:true, minlength:3, maxlength:30},
                        hoten:{required:true, minlength:6},
                        diachi:{required:true, minlength:2},
                        email: {required:true, email:true},
                        dienthoai: {required: true, digits: true, minlength:10, maxlength:11}
                    },
                    messages:
                        {
                            tendn:{required:"Bạn chưa nhập tên đăng nhập!", minlength:"Tên đăng nhập tối thiểu phải có 5 ký tự",maxlength:"Tên đăng nhập tối đa là 30 ký tự"},
                            matkhau:{required:"Bạn chưa nhập mật khẩu!", minlength:"Mật khẩu tối thiểu phải có 3 ký tự", maxlength:"Mật khẩu tối đa là 30 ký tự"},
                            hoten:{required:"Bạn chưa nhập họ tên!", minlength:"Họ tên tối thiểu phải có 6 ký tự"},
                            diachi:{required:"Bạn chưa nhập địa chỉ!", minlength:"Địa chỉ tối thiểu phải có 2 ký tự"},
                            email: {required: "Bạn chưa nhập Email", email:"Vui lòng nhập đúng email!"},
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
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Liên Hệ</div>

        	<div class="feat_prod_box_details">
              	<div class="contact_form">
                <div class="form_subtitle">Tạo tài khoản mới</div>
                 <%--Table thong tin nguoi dung--%>
          <form id="dangki" name="form1" method="post" action="processregister.jsp" >
<table width="300" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
  <tr>
    <td width="121" height="30"><div align="right" class="thongtin"><strong>Tên Đăng Nhập:</strong></div></td>
    <td width="444"><label>
      <input name="tendn" type="text" class="textbox" id="tendn" />
    </label></td>
  </tr>
  <tr>
    <td height="30" class="thongtin"><div align="right"><strong>Mật Khẩu:</strong></div></td>
    <td><label>
      <input name="matkhau" type="password" class="textbox" id="matkhau" />
    </label></td>
  </tr>
  <tr>
    <td height="30" class="thongtin"><div align="right"><strong>Họ Tên:</strong></div></td>
    <td><label>
      <input name="hoten" type="text" class="textbox" id="hoten" />
    </label></td>
  </tr>
  <tr>
    <td height="30" class="thongtin"><div align="right"><strong>Ngày Sinh:</strong></div></td>
    <td><label>
    <select name="ngay">
         <%! int i; %>
        <%
            for(i=1; i<=31; i++)
                out.print("<option>"+i+"</option>");
        %>
    </select>
    / 
    
    <select name="thang">
        <%
            for(i=1; i<=12; i++)
                out.print("<option>"+i+"</option>");
        %>

    </select> 
    / 
    <select name="nam">
        <%
            for(i=1931; i<=2010; i++)
                out.print("<option>"+i+"</option>");
        %>
 
    </select>
    </label></td>
  </tr>
  <tr>
    <td height="30" class="thongtin"><div align="right"><strong>Địa Chỉ:</strong></div></td>
    <td><label>
      <input name="diachi" type="text" class="textbox" id="diachi" />
    </label></td>
  </tr>
  <tr>
    <td height="30" class="thongtin"><div align="right"><strong>Điện Thoại:</strong></div></td>
    <td><label>
      <input name="dienthoai" type="text" class="textbox" id="dienthoai" />
    </label>   </td>
  </tr>
  <tr>
    <td height="30" class="thongtin"><div align="right"><strong>Email:</strong></div></td>
    <td><label>
      <input name="email" type="text" class="textbox" id="email" />
    </label></td>
  </tr>
  <tr>
    <td height="30" class="thongtin"><div align="right"><strong>Giới Tính:</strong></div></td>
    <td><p>
      <label>
        <input type="radio" name="gioitinh" value="1" id="gioitinh_0" checked="true" />
        Nam</label>
      <label>
        <input type="radio" name="gioitinh" value="0" id="gioitinh_1" />
        Nữ</label>
      <br />
    </p></td>
  </tr>
  <tr>
  	<td></td>
    <td height="40"><label>
       <div align="center">
         <input type="submit" name="them" id="them" value="Đăng kí" />
         <input type="reset" name="lamlai" id="lamlai" value="Làm Lại" />
        </div>
    </label></td>
  </tr>
</table>
</form>
<%--Ket thuc table thong tin nguoi dung--%>    
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