
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Quản lý nhà xuất bản</title>
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
            String select = "SELECT TOP 1 MaNXB FROM NXB ORDER BY MaNXB DESC";
        %>
                 <%@include file="connect.jsp" %>
        <% 
            rs = st.executeQuery(select); 
            if(rs!=null)
            {
                while(rs.next())
                {
                    String ma=rs.getString(1);
                    String chuoidau=ma.substring(0,3);
                    String chuoicuoi=ma.substring(3,6);
                    String soketiep=String.valueOf(Integer.parseInt(chuoicuoi)+1);  
                    String maketiep;
                    if(Integer.parseInt(soketiep) >= 100)
                        maketiep=chuoidau+soketiep;
                     else
                        maketiep=chuoidau+"0"+soketiep; 
        %>
    
    <script src="js/jquery-1.7.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#form1").validate(
            {
                rules:
                    {
                        tennxb:{required:true},
                        diachi:{required:true},
                        sodt:{required:true,digits:true},
                        sofax:{required:true, digits:true}
                    },
                    messages:
                        {
                            tennxb:{required:"Bạn chưa nhập tên nhà xuất bản!"},
                            diachi:{required:"Bạn chưa nhập địa chỉ nhà xuất bản!"},
                            sodt:{required:"Bạn chưa nhập số điện thoại nhà xuất bản!", digits:"Vui lòng nhập đúng số điện thoại"},
                            sofax:{required:"Bạn chưa nhập số fax nhà xuất bản!", digits:"Vui lòng nhập đúng số fax"}
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
                    <strong><font  size="6" color="#3399CC">TRANG THÊM NHÀ XUẤT BẢN</font></strong>
                </td></tr></table>
           <br/><br/>
           <%--onsubmit="return kiemtranhap();"--%>
<%--Table thong tin nguoi dung--%>
          <form id="form1" name="form1" method="post" action="processaddnxb.jsp" >

<table width="571" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
  <tr>
    <td height="40" colspan="2" bgcolor="#33FF99"><div align="center" class="style1">THÊM NHÀ XUẤT BẢN</div></td>
    </tr>
   <tr>
    <td width="121" height="30" bgcolor="#CCFFCC"><div align="right" class="thongtin"><strong>Mã Nhà Xuất Bản:</strong></div></td>
    <td width="444" bgcolor="#66CC99"><label>
            <input name="manxb" type="text" class="textbox" id="manxb" value="<%=maketiep %>" size="10"/>
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Tên Nhà Xuất Bản:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="tennxb" type="text" class="textbox" id="tennxb" size="30"/>
    </label></td>
  </tr>
  
      <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Địa Chỉ:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="diachi" type="text" class="textbox" id="diachi" size="30"/>
    </label></td>
  </tr>
      <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Số Điện Thoại:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="sodt" type="text" class="textbox" id="sodt" size="20"/>
    </label></td>
  </tr>
      <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Số Fax:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="sofax" type="text" class="textbox" id="sofax" size="20"/>
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
        <%@include file="dsnxb.jsp" %>
        <br />
        
           <table align="center" cellspacing="20">
            <tr>
                <td>
                    <a href="editnxb.jsp"><img src="..\images\edit.png" /></a>
                </td>
                <td>
                   <a href="deletenxb.jsp"> <img src="..\images\delete.png" /></a>
                </td>
            </tr>
        </table> 
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
<%@include file="footer.jsp" %>
    

</div>

</body>
       

</html>