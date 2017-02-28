
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Quản lý sách</title>
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
            String select = "SELECT TOP 1 MaSach FROM SACH ORDER BY MaSach DESC";
            String select1 = "SELECT MaNXB, TenNXB FROM NXB";
            String select2 = "SELECT MaTL, TenTL FROM THELOAI";
            String select4 = "SELECT MaNN, TenNN FROM NGONNGU";
        %>
                 <%@include file="connect.jsp" %>
        <% 
            rs = st.executeQuery(select); 
            if(rs!=null)
            {
                while(rs.next())
                {
                    String ma=rs.getString(1);
                    String chuoidau=ma.substring(0,1);
                    String chuoicuoi=ma.substring(1,4);
                    String soketiep=String.valueOf(Integer.parseInt(chuoicuoi)+1);  
                    String maketiep;
                    if(Integer.parseInt(soketiep) >= 100)
                        maketiep=chuoidau+soketiep;
                     else
                        maketiep=chuoidau+"0"+soketiep; 
        %>    
      

    
    <script src="../js/jquery-1.7.min.js" type="text/javascript"></script>
    <script src="../js/jquery.validate.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#form1").validate(
            {
                rules:
                    {
                        masach: {required:true},
                        tensach: {required:true},
                        gia: {required:true, digits:true, minlength:4, maxlength:7},
                        hinh: {required:true},
                        macts: {required:true},
                        sotrang: {required:true, digits:true},
                        trongluong: {required:true, digits:true},
                        kichthuoc: {required:true},
                        namxuatban: {required:true, digits:true, minlength:4, maxlength:4},
                        gioithieu: {required:true}
                    },
                    messages:
                        {
                            masach:{required:"Bạn chưa nhập mã sách!"},
                            tensach:{required:"Bạn chưa nhập tên sách!"},
                            gia:{required:"Bạn chưa nhập giá tiền!", digits:"Vui lòng nhập đúng giá sách", minlength:"Giá tiền tối thiểu là 1000", maxlength:"Giá tiền tối đa là 9999999"},
                            hinh:{required:"Bạn chưa chọn hình sách!"},
                            macts:{required:"Bạn chưa nhập mã chi tiết sách!"},
                            sotrang:{required:"Bạn chưa nhập số trang!", digits:"Số trang phải là kiểu số"},
                            trongluong:{required:"Bạn chưa nhập trọng lượng!", digits:"Trọng lượng phải là kiểu số"},
                            kichthuoc:{required:"Bạn chưa nhập kích thước!", digits:"Kích thước phải là kiểu số"},
                            namxuatban:{required:"Bạn chưa nhập năm xuất bản!", digits:"Năm xuất bản phải là 4 chữ số"},
                            gioithieu:{required:"Bạn chưa nhập giới thiệu về sách này!"}
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
                    <strong><font  size="6" color="#3399CC">TRANG THÊM SÁCH</font></strong>
                </td></tr></table>
           <br/><br/>
<%--Table thong tin nguoi dung--%>
          <form id="form1" name="form1" method="post" action="../Upload.do" enctype="multipart/form-data" >

<table width="571" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
  <tr>
    <td height="40" colspan="2" bgcolor="#33FF99"><div align="center" class="style1">THÊM SÁCH</div></td>
    </tr>
  <tr>
    <td width="121" height="30" bgcolor="#CCFFCC"><div align="right" class="thongtin"><strong>Mã Sách:</strong></div></td>
    <td width="444" bgcolor="#66CC99"><label>
      <input name="masach" type="text" class="textbox" id="masach"  value="<%=maketiep %>" />
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Tên Sách:</strong></div></td>
    <td bgcolor="#66CC99"><label>
            <input name="tensach" type="text" class="textbox" id="tensach" size="40"  />
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Tên Nhà Xuất Bản:</strong></div></td>
    <td bgcolor="#66CC99"><label>
            <select name="manxb">
      <% 
            rs = st.executeQuery(select1); 
            if(rs!=null)
            {
                while(rs.next())
                {
                    String manxb=rs.getString(1);
                    String tennxb=rs.getString(2);
     %>
                <option value="<%=manxb %>"><%=tennxb %></option>
                <%
                }
            }
                %>
            </select>
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Tên Thể Loại:</strong></div></td>
    <td bgcolor="#66CC99"><label>
        <select name="matl">
     <% 
            rs = st.executeQuery(select2); 
            if(rs!=null)
            {
                while(rs.next())
                {
                    String matl=rs.getString(1);
                    String tentl=rs.getString(2);
     %>
                <option value="<%=matl %>"><%=tentl %></option>
                <%
                }
            }
                %>
            </select>
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Giá:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="gia" type="text" class="textbox" id="gia" />
    </label>   </td>
  </tr>
                            <%!
            String select3 = "SELECT TOP 1 MaCTS FROM CHITIETSACH ORDER BY MaCTS DESC";
        %>
        <% 
            rs = st.executeQuery(select3); 
            if(rs!=null)
            {
                while(rs.next())
                {
                    String ma1=rs.getString(1);
                    String chuoidau1=ma1.substring(0,3);
                    String chuoicuoi1=ma1.substring(3,6);
                    String soketiep1=String.valueOf(Integer.parseInt(chuoicuoi1)+1);  
                    String maketiep1;
                    if(Integer.parseInt(soketiep1) >= 100)
                        maketiep1=chuoidau1+soketiep1;
                     else
                        maketiep1=chuoidau1+"0"+soketiep1; 
        %>
            <tr>
    <td width="121" height="30" bgcolor="#CCFFCC"><div align="right" class="thongtin"><strong>Mã CTS:</strong></div></td>
    <td width="444" bgcolor="#66CC99"><label>
      <input name="macts" type="text" class="textbox" id="macts"  value="<%=maketiep1 %>" />
    </label></td>
  </tr>
    
            <%	
                     }
            }
        %> 
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Ngôn Ngữ:</strong></div></td>
    <td bgcolor="#66CC99"><label>
            <select name="mann">
            <% 
            rs = st.executeQuery(select4); 
            if(rs!=null)
            {
                while(rs.next())
                {
                    String mann=rs.getString(1);
                    String tennn=rs.getString(2);
     %>
                <option value="<%=mann %>"><%=tennn %></option>
                <%
                }
            }
                %>
                </select>
    </label></td>
  </tr>
            <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Số Trang:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="sotrang" type="text" class="textbox" id="sotrang" />
    </label>   </td>
  </tr>
                <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Trọng Lượng:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="trongluong" type="text" class="textbox" id="trongluong" />Gr
    </label>   </td>
  </tr>
                <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Hình Thức Bìa:</strong></div></td>
    <td bgcolor="#66CC99"><label>
            <select name="hinhthucbia" >
                <option value="Mềm" >Mềm</option>
                <option value="Cứng">Cứng</option>
            </select>
    </label>   </td>
  </tr>
                    <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Kích Thước:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="kichthuoc" type="text" class="textbox" id="kichthuoc" />
    </label>   </td>
  </tr>
                    <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Năm Xuất Bản:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="namxuatban" type="text" class="textbox" id="namxuatban" />
    </label>   </td>
  </tr>
                    <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Giới Thiệu:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <textarea name="gioithieu" id="gioithieu" cols="40" rows="10"></textarea>
    </label>   </td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Hình:</strong></div></td>
    <td bgcolor="#66CC99"><label>
            <input name="hinh" type="file" class="textbox" id="hinh"/>
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
        	
              <%@include file="dssach.jsp" %>
        <br />
        
           <table align="center" cellspacing="20">
            <tr>
                <td>
                    <a href="editsach.jsp"><img src="..\images\edit.png" /></a>
                </td>
                <td>
                   <a href="deletesach.jsp"> <img src="..\images\delete.png" /></a>
                </td>
            </tr>
        </table> 
       
        <%	
                     }
            }
        %>     
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <%@include file="footer.jsp" %>
    

</div>

</body>
       
<%--Quảng cáo trượt 2 bên --%>        
<div id="divAdRight" style="DISPLAY: none; POSITION: absolute; TOP: 0px"> 
<a href="#"><img src="images\bannerfpt.jpg" width="125" /></a>
</div> 
<div id="divAdLeft" style="DISPLAY: none; POSITION: absolute; TOP: 0px"> 
<a href="#"><img src="images\bannerfpt.jpg" width="125" /></a>       
</div> 
      


</html>