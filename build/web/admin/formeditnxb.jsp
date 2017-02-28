
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
       	 <%@page import="java.util.Date" %>
              <%@include file="connect.jsp" %>
        <%
            String manxb=request.getParameter("manxb");
            String select1 = "SELECT TenNXB, DiaChi, SoDT, SoFax FROM NXB WHERE MaNXB='"+manxb+"'";
            rs = st.executeQuery(select1);
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
        input.error{border: 2px solid #FF0000;color:#0000FF;}
    </style>
    
     
<div id="wrap">
       <%@include file="menucp.jsp" %>
       <div class="center_content">
           <br/>
       	<table align="center" bgcolor="#CCFFCC"><tr ><td>
                    <strong><font  size="6" color="#3399CC">TRANG SỬA THÔNG TIN DỊCH GIẢ</font></strong>
                </td></tr></table>
           <br/><br/>
<%--Table thong tin nguoi dung--%>
          <form id="form1" name="form1" method="post" action="processeditnxb.jsp" >

<table width="571" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
  <tr>
    <td height="40" colspan="2" bgcolor="#33FF99"><div align="center" class="style1">SỬA THÔNG TIN NHÀ XUẤT BẢN</div></td>
    </tr>
    <%
            if(rs!=null)
                
            { 
                while(rs.next())
                {
                    String tennxb = rs.getString(1);
                    String diachi = rs.getString(2);
                    String sodt = rs.getString(3);
                    String sofax = rs.getString(4);
         %>
 <tr>
    <td width="121" height="30" bgcolor="#CCFFCC"><div align="right" class="thongtin"><strong>Mã Nhà Xuất Bản:</strong></div></td>
    <td width="444" bgcolor="#66CC99"><label>
            <input name="manxb" type="text" class="textbox" id="manxb" size="10" value="<%=manxb %>" />
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Tên Tác Giả:</strong></div></td>
    <td bgcolor="#66CC99"><label>
            <input name="tennxb" type="text" class="textbox" id="tennxb" size="30" value="<%=tennxb %>" />
    </label></td>
  </tr>
    
     <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Địa Chỉ:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="diachi" type="text" class="textbox" id="diachi" size="30" value="<%=diachi %>"/>
    </label></td>
  </tr>
      <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Số Điện Thoại:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="sodt" type="text" class="textbox" id="sodt" size="20" value="<%=sodt %>"/>
    </label></td>
  </tr>
      <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Số Fax:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="sofax" type="text" class="textbox" id="sofax" size="20" value="<%=sofax %>"/>
    </label></td>
  </tr>
         <tr><td bgcolor="#CCFFCC"></td><td  bgcolor="#66CC99"><span id="myError"/></td></tr>
  <tr>
  	<td bgcolor="#CCFFCC"></td>
    <td height="40" bgcolor="#66CC99"><label>
       <div align="center">
         <input type="submit" name="them" id="sua" value="Sửa" />
         <input type="reset" name="lamlai" id="lamlai" value="Làm Lại" />
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
        
        <%@include file="dsnxb.jsp" %>
                <br />
        
           <table align="center" cellspacing="20">
            <tr>
                <td>
                    <a href="addnxb.jsp"><img src="images\add.png" /></a>
                </td>
                <td>
                   <a href="deletenxb.jsp"> <img src="images\delete.png" /></a>
                </td>
            </tr>
        </table> 

    <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <div class="footer">
       	<div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br /> <a href="http://csscreme.com/freecsstemplates/" title="free templates"><img src="images/csscreme.gif" alt="free templates" title="free templates" border="0" /></a></div>
        <div class="right_footer">
        <a href="index.jsp">Trang Chủ</a>
        <a href="about.jsp">Giới Thiệu</a>
        <a href="services.jsp">Dịch Vụ Khác</a>
        <a href="privacy.jsp">Chính Sách Bảo Mật</a>
        <a href="lienhe.jsp">Liên Hệ</a>
       
        </div>
        
       
       </div>
    

</div>

</body>
       
<%--Quảng cáo trượt 2 bên --%>        
<div id="divAdRight" style="DISPLAY: none; POSITION: absolute; TOP: 0px"> 
<a href="#"><img src="images\bannerfpt.jpg" width="125" /></a>
</div> 
<div id="divAdLeft" style="DISPLAY: none; POSITION: absolute; TOP: 0px"> 
<a href="#"><img src="images\bannerfpt.jpg" width="125" /></a>       
</div> 
<script> 
    function FloatTopDiv() 
    { 
        startLX = ((document.body.clientWidth -MainContentW)/2)-LeftBannerW-LeftAdjust , startLY = TopAdjust+80; 
        startRX = ((document.body.clientWidth -MainContentW)/2)+MainContentW+RightAdjust , startRY = TopAdjust+80; 
        var d = document; 
        function ml(id) 
        { 
            var el=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id]; 
            el.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';}; 
            el.x = startRX; 
            el.y = startRY; 
            return el; 
        } 
        function m2(id) 
        { 
            var e2=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id]; 
            e2.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';}; 
            e2.x = startLX; 
            e2.y = startLY; 
            return e2; 
        } 
        window.stayTopLeft=function() 
        { 
            if (document.documentElement && document.documentElement.scrollTop) 
                var pY =  document.documentElement.scrollTop; 
            else if (document.body) 
                var pY =  document.body.scrollTop; 
            if (document.body.scrollTop > 30){startLY = 3;startRY = 3;} else {startLY = TopAdjust;startRY = TopAdjust;}; 
            ftlObj.y += (pY+startRY-ftlObj.y)/16; 
            ftlObj.sP(ftlObj.x, ftlObj.y); 
            ftlObj2.y += (pY+startLY-ftlObj2.y)/16; 
            ftlObj2.sP(ftlObj2.x, ftlObj2.y); 
            setTimeout("stayTopLeft()", 1); 
        } 
        ftlObj = ml("divAdRight"); 
        //stayTopLeft(); 
        ftlObj2 = m2("divAdLeft"); 
        stayTopLeft(); 
    } 
    function ShowAdDiv() 
    { 
        var objAdDivRight = document.getElementById("divAdRight"); 
        var objAdDivLeft = document.getElementById("divAdLeft");        
        if (document.body.clientWidth < 1000) 
        { 
            objAdDivRight.style.display = "none"; 
            objAdDivLeft.style.display = "none"; 
        } 
        else 
        { 
            objAdDivRight.style.display = "block"; 
            objAdDivLeft.style.display = "block"; 
            FloatTopDiv(); 
        } 
    }  
</script> 
<script> 
document.write("<script type='text/javascript' language='javascript'>MainContentW = 900;LeftBannerW = 125;RightBannerW = 125;LeftAdjust = 5;RightAdjust = 5;TopAdjust = 10;ShowAdDiv();window.onresize=ShowAdDiv;;<\/script>"); 
</script>
        
<%--Kết thúc quảng cáo trượt 2 bên --%>        

</html>