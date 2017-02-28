<%-- 
    Document   : ShoppingCart
    Created on : Dec 9, 2011, 1:49:46 PM
    Author     : Crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart Contents</title>
    </head>
    <body>
                <%
                  String id=request.getParameter("id");
            if(id!=null){
               cart.removeItem(id);
               float total=cart.getcost();
            }
        %>
    <center>
        <table width="300" border="1" cellspacing="0" cellpadding="2" border="0">
            <caption><b>Shopping Cart Contents</b></caption>
            <tr>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Xóa</th>
            </tr>
            <%
                Enumeration e=cart.getEnumeration();
                String[] tmpItem;
                
                while(e.hasMoreElements()){
                    tmpItem=(String[])e.nextElement();
                    float total=cart.getcost();
            %>
            <form action="ShoppingCart.jsp">
            <tr>
                <td><%=tmpItem[1] %></td>
                <td align="center">$<%=tmpItem[2]%></td>
                <td align="center"><%=tmpItem[3]%></td>
            <td><input type="submit" name="Submit" value="Xóa"></td>
            <input type="hidden" name="id" value="<%=tmpItem[0] %>">
            <input type="hidden" name="desc" value="<%=tmpItem[1] %>">
            <input type="hidden" name="price" value="<%=tmpItem[2] %>">
            </tr>
             <tr><td align="right" colspan="3"><input type="textbox" name="price"  size="5" value="<%=total %>"></td></tr>
            <%
                }
            %>
         <%--   <tr><td align="right" colspan="3"><input type="textbox" name="price"  size="5" value='"<%=total %>'></td></tr>--%>
        </table>
            </form>
    </center>
        <a href="AddToShoppingCart.jsp">Back to Catalog</a>
    </body>
</html>
