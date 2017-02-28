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
<title>Quản lý đơn hàng</title>
<link rel="stylesheet" type="text/css" href="../style.css" />

</head>
<body>
           <%@include file="connect.jsp" %>
    <%!
        String select="SELECT MaDH FROM DONHANG";
        
    %>
    
    
<div id="wrap">
       <%@include file="menucp.jsp" %>
       <div class="center_content">
        <br/>
       	<table align="center" bgcolor="#CCFFCC"><tr ><td>
                    <strong><font  size="6" color="#3399CC">XEM CHI TIẾT ĐƠN HÀNG</font></strong>
                </td></tr></table>
           <br/><br/>
           
           <form id="form1" name="form1" method="post" action="chitietdonhang.jsp">
<center>
    Chọn Đơn hàng cần xem: 
        <label>
    <select name="madh" id="madh">
    <%
        rs = st.executeQuery(select);
        if(rs!=null)
        {
            while(rs.next())
            {
                String madh=rs.getString(1);
      %>
        <option value="<%=madh %>"><%=madh %></option>
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
           
    
               
    <%@include file="dsdonhang.jsp" %>
    
        <br />
        <table align="center" cellspacing="20">
            <tr>
                <td>
                   <a href="deletedonhang.jsp"> <img src="..\images\delete.png" /></a>
                </td>
            </tr>
        </table>
          

        
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
<%@include file="footer.jsp" %>
    

</div>

</body>
       
</html>