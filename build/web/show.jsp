<%-- 
    Document   : show
    Created on : Dec 10, 2011, 8:51:11 AM
    Author     : Crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show</title>
    </head>
    <body>
        <h1>Your Shopping Cart</h1>
        <c:set var="shop" value="${sessionScope.SHOP}" />
        <c:if test="${not empty shop}" >
            <table border="1">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Title</th>
                        <th>Quantity</th>
                        <th>Action</th>
                    </tr>
                </thead>
                
                <tbody>
                <c:if test="${not empty shop}">
                <form action="Controller">
                    <c:set var="count" value="0" />
                    <c:forEach var="rows" items="${shop}" >
                        <c:set var="count" value="${count + 1}" />
                        <tr>
                            <td>${count}</td>
                            <td>${rows.value.title}</td>
                            <td>${rows.value.quantity}</td>
                            <td><input type="checkbox" name="rmv" value="${rows.value.title}" /></td>
                        </tr>
                    </c:forEach>
                </c:if>
                        <tr>
                            <c:url var="add" value="Controller">
                                <c:param name="action" value="AddMore" />
                            </c:url>
                            <td colspan="2"><a href="${add}">Add More</a></td>
                            <td><input type="submit" value="Remove" name="action"/></td>
                        </tr>
                </form>
                </tbody>
            </table>
        </c:if>
    </body>
</html>
