<%-- 
    Document   : scripts
    Created on : Dec 11, 2011, 12:43:42 PM
    Author     : Crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <script src="rainbow.js">

</script>
<script language="javascript" src="http://dai10a1.xtgem.com/javascript/cursor.js"></script><script
language="javascript"
src="http://dai10a1.xtgem.com/javascript/trochuot2.js"></script>

<script>
var msg = " .:: BookOnline.com ::. || .:: Nhà Sách Trực Tuyến ::. ";

var pos = 0;

var spacer = " || ";

var time_length = 100;

function ScrollTitle()

{

document.title = msg.substring(pos, msg.length) + spacer + msg.substring(0, pos);

pos++;

if (pos > msg.length) pos=0;

window.setTimeout("ScrollTitle()",time_length);

}

ScrollTitle();

</script>

<script type="text/javascript" src="cuon.js">
</script>
        

    </body>
</html>
