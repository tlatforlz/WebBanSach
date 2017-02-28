
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Quản lý dịch giả</title>
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
        <%!
            String select = "SELECT TOP 1 MaDichGia FROM DICHGIA ORDER BY MaDichGia DESC";
        %>
        <%@include file="maketiep.jsp" %>
    
    <script src="js/jquery-1.7.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#form1").validate(
            {
                rules:
                    {
                        tendg:{required:true}
                    },
                    messages:
                        {
                            tendg:{required:"Bạn chưa nhập tên dịch giả!"}
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
                    <strong><font  size="6" color="#3399CC">TRANG THÊM DỊCH GIẢ</font></strong>
                </td></tr></table>
           <br/><br/>
           <%--onsubmit="return kiemtranhap();"--%>
<%--Table thong tin nguoi dung--%>
          <form id="form1" name="form1" method="post" action="processadddichgia.jsp" >

<table width="571" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
  <tr>
    <td height="40" colspan="2" bgcolor="#33FF99"><div align="center" class="style1">THÊM DỊCH GIẢ</div></td>
    </tr>
   <tr>
    <td width="121" height="30" bgcolor="#CCFFCC"><div align="right" class="thongtin"><strong>Mã Dịch Giả:</strong></div></td>
    <td width="444" bgcolor="#66CC99"><label>
            <input name="madg" type="text" class="textbox" id="madg" value="<%=maketiep %>" size="10"/>
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Tên Dịch Giả:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="tendg" type="text" class="textbox" id="tendg" size="40"/>
    </label></td>
  </tr>
  
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
<%--Ket thuc table thong tin nguoi dung --%>           

        <%	
                     }
            }
        %>    
        <%@include file="dsdichgia.jsp" %>
        <br />
        
           <table align="center" cellspacing="20">
            <tr>
                <td>
                    <a href="editdichgia.jsp"><img src="..\images\edit.png" /></a>
                </td>
                <td>
                   <a href="deletedichgia.jsp"> <img src="..\images\delete.png" /></a>
                </td>
            </tr>
        </table> 
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
<%@include file="footer.jsp" %>
    

</div>

</body>
       

</html>