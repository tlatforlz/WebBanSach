<%--
    Document   : user
    Created on : Nov 18, 2011, 11:45:59 AM
    Author     : Crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Quản lý sách</title>
<link rel="stylesheet" type="text/css" href="../style.css" />

</head>
<body>
           <%@include file="connect.jsp" %>
    <%!
        String select="SELECT MaSach, TenSach FROM SACH";
        String select1="SELECT MaTG, TenTG FROM TACGIA";
        String select2="SELECT MaDichGia, TenDichGia FROM DICHGIA";
    %>
    
    
<div id="wrap">
       <%@include file="menucp.jsp" %>
       <div class="center_content">
        <br/>
       	<table align="center" bgcolor="#CCFFCC"><tr ><td>
                    <strong><font  size="6" color="#3399CC">XEM CHI TIẾT SÁCH</font></strong>
                </td></tr></table>
           <br/><br/>
           
           <form id="form1" name="form1" method="post" action="chitietsach.jsp">
<center>
    Chọn Mã Sách cần xem: 
        <label>
    <select name="masach" id="masach">
    <%
        rs = st.executeQuery(select);
        if(rs!=null)
        {
            while(rs.next())
            {
                String masach=rs.getString(1);
      %>
        <option value="<%=masach %>"><%=masach %></option>
     <%
           }
        }
    %>
    </select>
    </label>
      <label>
  <input type="submit" name="Submit" value="Xem chi tiết" />
  </label>
    </center>
</form>
    <br/>
    <br/>
     <form id="form1" name="form1" method="post" action="processaddsachtacgia.jsp">
    <table align="center" bgcolor="#CCFFCC"><tr ><td>
                    <strong><font  size="6" color="#3399CC">QUẢN LÝ SÁCH-TÁC GIẢ</font></strong>
                </td></tr></table>
           <br/>
           
<center>
    <table>
        <tr>
            <td align="left">
    Chọn Sách cần gán tác giả: 
    </td>
            <td>
        <label>
    <select name="masach" id="masach">
    <%
        rs = st.executeQuery(select);
        if(rs!=null)
        {
            while(rs.next())
            {
                String masach=rs.getString(1);
                String tensach=rs.getString(2);
      %>
        <option value="<%=masach %>"><%=tensach %></option>
     <%
           }
        }
    %>
    </select>
    </label>
    </td>
</tr>
    <br/>
            <tr>
            <td align="left">
        Chọn tác giả của sách vừa chọn:
            </td>
                <td>
        <label>
    <select name="matg" id="matg">
    <%
        rs = st.executeQuery(select1);
        if(rs!=null)
        {
            while(rs.next())
            {
                String matg=rs.getString(1);
                String tentg=rs.getString(2);
      %>
        <option value="<%=matg %>"><%=tentg %></option>
     <%
           }
        }
    %>
    </select>
    </label>
        </td>
</tr>
    <tr>
        <td></td>
        <td align="left">
                  <label>
  <input type="submit" name="Submit" value="Gán" />
  </label>
        </td>
    </tr>
    </table>
</center>
     </form>
        <br/>
    <br/>
     <form id="form1" name="form1" method="post" action="processaddsachdichgia.jsp">
    <table align="center" bgcolor="#CCFFCC"><tr ><td>
                    <strong><font  size="6" color="#3399CC">QUẢN LÝ SÁCH-DỊCH GIẢ</font></strong>
                </td></tr></table>
           <br/>
           <center>
    <table>
        <tr>
            <td align="left">
    Chọn Sách cần gán dịch giả: 
    </td>
            <td>
        <label>
    <select name="masach" id="masach">
    <%
        rs = st.executeQuery(select);
        if(rs!=null)
        {
            while(rs.next())
            {
                String masach=rs.getString(1);
                String tensach=rs.getString(2);
      %>
        <option value="<%=masach %>"><%=tensach %></option>
     <%
           }
        }
    %>
    </select>
    </label>
    </td>
</tr>
    <br/>
            <tr>
            <td align="left">
        Chọn dịch giả của sách vừa chọn:
            </td>
                <td>
        <label>
    <select name="madg" id="madg">
    <%
        rs = st.executeQuery(select2);
        if(rs!=null)
        {
            while(rs.next())
            {
                String madg=rs.getString(1);
                String tendg=rs.getString(2);
      %>
        <option value="<%=madg %>"><%=tendg %></option>
     <%
           }
        }
    %>
    </select>
    </label>
        </td>
</tr>
    <tr>
        <td></td>
        <td align="left">
                  <label>
  <input type="submit" name="Submit" value="Gán" />
  </label>
        </td>
    </tr>
    </table>
</center>
     </form>
           
    
               
    <%@include file="dssach.jsp" %>
    
        <br />
        <table align="center" cellspacing="20">
            <tr>
                <td>
                    <a href="addsach.jsp"> <img src="..\images\add.png" /></a>
                </td>
                <td>
                    <a href="editsach.jsp"><img src="..\images\edit.png" /></a>
                </td>
                <td>
                   <a href="deletesach.jsp"> <img src="..\images\delete.png" /></a>
                </td>
            </tr>
        </table>
          

        
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <%@include file="footer.jsp" %>
    

</div>

</body>
       

</html>