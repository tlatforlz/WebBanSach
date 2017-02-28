<%-- 
    Document   : sachmoi
    Created on : Dec 4, 2011, 2:50:22 PM
    Author     : crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--<%@include file="connect.jsp" %>--%>
        <div width="500">      

<script type="text/javascript">
marqueeInit({
	uniqueid: 'mycrawler',
	style: {
		'padding': '5px',
		'width': '450px',
		'background': 'url(images/nen.jpg)',
		'border': '1px solid #CC3300'
	},
	inc: 8, //speed - pixel increment for each iteration of this marquee's movement
	mouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)
	moveatleast: 4,
	neutral: 150,
	savedirection: true
});
</script>



<div class="marquee" id="mycrawler2">
    <%! 
            String sm = "select top(10) s.UrlHinh, s.MaSach from Sach s , ChiTietSach cts  where s.MaSach = cts.MaSach ORDER BY NamXB DESC";
            int j=1;
        %>
        
        <% 
            rs = st.executeQuery(sm);
            if(rs!= null)
            {       
                for(j=1;rs.next();j++)
               {
                    out.println("<a href='chitietsach.jsp?MaSach=" +rs.getString(2)+"'><img src='hinhsach/"+ rs.getString(1)+"'  height='90' width='90' /></a> &nbsp;&nbsp;&nbsp;"  );
                }
             }  
             
            
        %>

</div>

<script type="text/javascript">
marqueeInit({
	uniqueid: 'mycrawler2',
	style: {
		'padding': '2px',
		'width': '600px',
		'height': '180px'
	},
	inc: 5, //speed - pixel increment for each iteration of this marquee's movement
	mouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)
	moveatleast: 2,
	neutral: 150,
	savedirection: true,
	random: true
});
</script>
        </div>
    </body>
</html>
