
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Quản lý Sách</title>
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
        <%
            String select2="SELECT MaNXB, TenNXB FROM NXB";
            String select3="SELECT MaTL, TenTL FROM THELOAI";          
            String masach=request.getParameter("masach");
            String select1 = "SELECT MaSach, TenSach, nxb.TenNXB, tl.TenTL, Gia, SoLanXem, UrlHinh, nxb.MaNXB, tl.MaTL FROM SACH s, NXB nxb, THELOAI tl WHERE s.MaNXB=nxb.MaNXB AND s.MaTL=tl.MaTL AND MaSach='"+masach+"'";
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
                        errorLabelContainer: "#myError",
                        wrapper:"li",
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
                    <strong><font  size="6" color="#3399CC">TRANG SỬA THÔNG TIN SÁCH</font></strong>
                </td></tr></table>
           <br/><br/>
<%--Table thong tin nguoi dung--%>
         <%--Table thong tin nguoi dung--%>
          <form id="form1" name="form1" method="post" action="processeditsach.jsp" >

<table width="571" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
  <tr>
    <td height="40" colspan="2" bgcolor="#33FF99"><div align="center" class="style1">SỬA THÔNG TIN SÁCH</div></td>
    </tr>
  <tr>
      <%
      if(rs!=null)
            {
                while(rs.next())
                {
                    String masach1=rs.getString(1);
                    String tensach=rs.getString(2);
                    String tennxb=rs.getString(3);
                    String tentl=rs.getString(4);
                    int gia=rs.getInt(5);
                    int solanxem=rs.getInt(6);
                    String hinh=rs.getString(7);
                    String manxb=rs.getString(8);
                    String matl=rs.getString(9);
                    
     %>
    <td width="121" height="30" bgcolor="#CCFFCC"><div align="right" class="thongtin"><strong>Mã Sách:</strong></div></td>
    <td width="444" bgcolor="#66CC99"><label>
            <input name="masach" type="text" class="textbox" id="masach"  value="<%=masach1 %>" size="10" />
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Tên Sách:</strong></div></td>
    <td bgcolor="#66CC99"><label>
            <textarea name="tensach" id="tensach" cols="40" rows="2" ><%=tensach %></textarea>
            <%--<input name="tensach" type="text" class="textbox" id="tensach" value="<%=tensach %>"  size="60" />--%>
    </label></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Tên Nhà Xuất Bản:</strong></div></td>
    <td bgcolor="#66CC99"><label>
            <select name="manxb">
                <option value="<%=manxb %>"><%=tennxb %></option>
      <% 
            rs = st.executeQuery(select2); 
            if(rs!=null)
            {
                while(rs.next())
                {
                    String manxb1=rs.getString(1);
                    String tennxb1=rs.getString(2);
     %>
                <option value="<%=manxb1 %>"><%=tennxb1 %></option>
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
            <option value="<%=matl %>"><%=tentl %></option>
                      <% 
            rs = st.executeQuery(select3); 
            if(rs!=null)
            {
                while(rs.next())
                {
                    String matl1=rs.getString(1);
                    String tentl1=rs.getString(2);
     %>
                <option value="<%=matl1 %>"><%=tentl1 %></option>
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
      <input name="gia" type="text" class="textbox" id="gia" value="<%=gia %>" />
    </label>   </td>
  </tr>
    
    <%
            String select5="SELECT MaNN, TenNN FROM NGONNGU";
            String select4 = "SELECT MaCTS, nn.TenNN, SoTrang, TrongLuong, HinhThucBia, KichThuoc, NamXB, GioiThieu, nn.MaNN FROM CHITIETSACH cts, NGONNGU nn WHERE cts.MaNN=nn.MaNN AND MaSach='"+masach+"'";
            rs = st.executeQuery(select4);
        %>   
         <%
      if(rs!=null)
            {
                while(rs.next())
                {
                    String macts=rs.getString(1);
                    String tennn=rs.getString(2);
                    int sotrang=rs.getInt(3);
                    int trongluong=rs.getInt(4);
                    String hinhthucbia=rs.getString(5);
                    String kichthuoc=rs.getString(6);
                    int namxuatban=rs.getInt(7);
                    String gioithieu=rs.getString(8);
                    String mann=rs.getString(9);
                    
     %>
    <tr>
    <td width="121" height="30" bgcolor="#CCFFCC"><div align="right" class="thongtin"><strong>Mã CTS:</strong></div></td>
    <td width="444" bgcolor="#66CC99"><label>
      <input name="macts" type="text" class="textbox" id="macts"  value="<%=macts %>" />
    </label></td>
  </tr>
    

  <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Ngôn Ngữ:</strong></div></td>
    <td bgcolor="#66CC99">
        <label>
            <select name="mann">
                <option value="<%=mann %>"><%=tennn %></option>
                
                <%! String select4 = "SELECT MaNN, TenNN FROM NGONNGU";%>
            <% 
            rs = st.executeQuery(select4); 
            if(rs!=null)
            {
                while(rs.next())
                {
                    String mann1=rs.getString(1);
                    String tennn1=rs.getString(2);
            %>
                <option value="<%=mann1 %>"><%=tennn1 %></option>
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
      <input name="sotrang" type="text" class="textbox" id="sotrang" value="<%=sotrang %>" />
    </label>   </td>
  </tr>
                <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Trọng Lượng:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="trongluong" type="text" class="textbox" id="trongluong" value="<%=trongluong %>" />Gr
    </label>   </td>
  </tr>
                <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Hình Thức Bìa:</strong></div></td>
    <td bgcolor="#66CC99"><label>
            <select name="hinhthucbia" value="<%=hinhthucbia %>"  >
                <option value="Mềm" >Mềm</option>
                <option value="Cứng">Cứng</option>
            </select>
    </label>   </td>
  </tr>
                    <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Kích Thước:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="kichthuoc" type="text" class="textbox" id="kichthuoc" value="<%=kichthuoc %>"  />
    </label>   </td>
  </tr>
                    <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Năm Xuất Bản:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="namxuatban" type="text" class="textbox" id="namxuatban" value="<%=namxuatban %>"  />
    </label>   </td>
  </tr>
                    <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Giới Thiệu:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <textarea name="gioithieu" id="gioithieu" cols="40" rows="10" ><%=gioithieu %></textarea>
    </label>   </td>
  </tr>
                            <%	
                     }
            }
        %> 
  <tr>
    
    <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Số Lần Xem:</strong></div></td>
    <td bgcolor="#66CC99"><label>
      <input name="solanxem" type="text" class="textbox" id="solanxem" value="<%=solanxem %>" />
    </label>   </td>
  </tr>
    <tr>
    <td height="30" bgcolor="#CCFFCC" class="thongtin"><div align="right"><strong>Hình:</strong></div></td>
    <td bgcolor="#66CC99"><label>
            <input name="hinh" type="file" class="textbox" id="hinh" value="<%=hinh %>" />
    </label></td>
  </tr>  
         <tr><td bgcolor="#CCFFCC"></td><td  bgcolor="#66CC99"></td></tr>
  <tr>
  	<td bgcolor="#CCFFCC"></td>
    <td height="40" bgcolor="#66CC99"><label>
       <div align="center">
         <input type="submit" name="sua" id="them" value="Sửa" />
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
        
        <%@include file="dssach.jsp" %>
                <br />
                
           <table align="center" cellspacing="20">
            <tr>
                <td>
                    <a href="addsach.jsp"><img src="images\add.png" /></a>
                </td>
                <td>
                   <a href="deletesach.jsp"> <img src="images\delete.png" /></a>
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