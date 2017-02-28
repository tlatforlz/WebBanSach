<%-- 
    Document   : search
    Created on : Dec 11, 2011, 11:29:14 PM
    Author     : Crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tìm Kiếm Sách</title>
    </head>
    <body>
         
<script type="text/javascript">
imageButtonAdd('image_button1');
</script>

<style type="text/css">
input.image_button1
{
width: 32px;
height: 31px;
margin: 0px;
border: none;
padding: 0px;
padding-top: 7px;
background: url('images/timkiem.jpg');
}
</style>

        <form id="form1" name="form1" method="post" action="processtimkiemsach.jsp">
            <b><font color="#9933FF" size="2"> Tìm Kiếm: </font></b>
  <label for="textfield"></label>
  <input name="tensach" type="text" id="tensach" size="25" />
  <label for="button"></label>
  <input  class="image_button1" id="image_button" type="submit" value="" />
    </form>
    </body>
</html>
