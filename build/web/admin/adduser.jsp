
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Quản lý người dùng</title>
<link rel="stylesheet" type="text/css" href="../style.css" />

<!--Kiểm tra nhập-->

<%--Style table thong tin--%>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #3366FF;
	font-weight: bold;
}
.textbox {
	border: 1px solid #3399FF;
}
.thongtin {
	padding-right: 10px;
}
-->
</style>
<%--Ket thuc style table thong tin--%>
</head>
<body>
       <%@include file="connect.jsp" %>
    <script src="js/jquery-1.7.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#form1").validate(
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
       <%@include file="menucp.jsp" %>   
       <div class="center_content">
           <br/>
       	<table align="center" bgcolor="#CCFFCC"><tr ><td>
                    <strong><font  size="6" color="#3399CC">TRANG THÊM NGƯỜI DÙNG</font></strong>
                </td></tr></table>
           <br/><br/>
           <%--onsubmit="return kiemtranhap();"--%>
<%--Table thong tin nguoi dung--%>
          <form id="form1" name="form1" method="post" action="processadduser.jsp" >

<table width="571" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
  <tr>
    <td height="40" colspan="2" bgcolor="#33FF99"><div align="center" class="style1">THÊM NGƯỜI DÙNG</div></td>
    </tr>
  <tr>
    <td width="121" height="30" bgcolor="#CCFFCC"><div align="right" class="thongtin"><strong>Tên Đăng Nhập:</strong></div></td>
    <td width="444" bgcolor="#66CC99"><label>
      <input name="tendn" type="text" class="textbox" id="tendn" />
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Mật Khẩu:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="matkhau" type="password" class="textbox" id="matkhau" />
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Họ Tên:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="hoten" type="text" class="textbox" id="hoten" />
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Ngày Sinh:</strong></div></td>
    <td bgcolor="#66CC99"><label>
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
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Địa Chỉ:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="diachi" type="text" class="textbox" id="diachi" size="40" />
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Điện Thoại:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="dienthoai" type="text" class="textbox" id="dienthoai" />
    </label>   </td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Email:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="email" type="text" class="textbox" id="email" />
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Giới Tính:</strong></div></td>
    <td bgcolor="#66CC99"><p>
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
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Group:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <select name="idgroup" class="textbox" id="idgroup">
        <option value="1">Admin</option>
        <option value="0" selected="selected">Người Dùng</option>
                        </select>
    </label></td>
  </tr>
         <tr><td bgcolor="#CCFFCC"></td><td  bgcolor="#66CC99"></td></tr>
  <tr>
  	<td bgcolor="#CCFFCC"></td>
    <td height="40" bgcolor="#66CC99"><label>
       <div align="center">
         <input type="submit" name="them" id="them" value="Thêm" />
         <input type="reset" name="lamlai" id="lamlai" value="Làm Lại" />
        </div>
    </label></td>
  </tr>
</table>
</form>
<%--Ket thuc table thong tin nguoi dung--%>           
        	
              <%@include file="dsuser.jsp" %>
        <br />
        
           <table align="center" cellspacing="20">
            <tr>
                <td>
                    <a href="edituser.jsp"><img src="..\images\edit.png" /></a>
                </td>
                <td>
                   <a href="deleteuser.jsp"> <img src="..\images\delete.png" /></a>
                </td>
            </tr>
        </table> 
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <%@include file="footer.jsp" %>
</div>

</body>
       

</html>