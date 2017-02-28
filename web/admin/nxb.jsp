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
<title>Quản lý nhà xuất bản</title>
<link rel="stylesheet" type="text/css" href="../style.css" />

</head>
<body>
      <%@include file="connect.jsp" %>
    
<div id="wrap">
       <%@include file="menucp.jsp" %>
       <div class="center_content">
        
    <%@include file="dsnxb.jsp" %>
    
        <br />
        <table align="center" cellspacing="20">
            <tr>
                <td>
                    <a href="addnxb.jsp"> <img src="..\images\add.png" /></a>
                </td>
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