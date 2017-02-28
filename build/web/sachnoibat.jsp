
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sách nổi bật</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
        
        </style>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="ddimgtooltip.css" />

<script type="text/javascript">


var ddimgtooltip={

	tiparray:function(){
		var tooltips=[]
		//define each tooltip below: tooltip[inc]=['path_to_image', 'optional desc', optional_CSS_object]
		//For desc parameter, backslash any special characters inside your text such as apotrophes ('). Example: "I\'m the king of the world"
		//For CSS object, follow the syntax: {property1:"cssvalue1", property2:"cssvalue2", etc}

       tooltips[0]=["31.gif", "Book Store<br /> Nhà Sách Online", {background:"#FFFFFF", color:"black", border:"3px ridge darkblue"}]

    return tooltips //do not remove/change this line
	}(),

	tooltipoffsets: [20, -30], //additional x and y offset from mouse cursor for tooltips

	//***** NO NEED TO EDIT BEYOND HERE

	tipprefix: 'imgtip', //tooltip ID prefixes

	createtip:function($, tipid, tipinfo){
		if ($('#'+tipid).length==0){ //if this tooltip doesn't exist yet
			return $('<div id="' + tipid + '" class="ddimgtooltip" />').html(
				'<div style="text-align:center"><img src="' + tipinfo[0] + '" /></div>'
				+ ((tipinfo[1])? '<div style="text-align:left; margin-top:5px">'+tipinfo[1]+'</div>' : '')
				)
			.css(tipinfo[2] || {})
			.appendTo(document.body)
		}
		return null
	},

	positiontooltip:function($, $tooltip, e){
		var x=e.pageX+this.tooltipoffsets[0], y=e.pageY+this.tooltipoffsets[1]
		var tipw=$tooltip.outerWidth(), tiph=$tooltip.outerHeight(), 
		x=(x+tipw>$(document).scrollLeft()+$(window).width())? x-tipw-(ddimgtooltip.tooltipoffsets[0]*2) : x
		y=(y+tiph>$(document).scrollTop()+$(window).height())? $(document).scrollTop()+$(window).height()-tiph-10 : y
		$tooltip.css({left:x, top:y})
	},
	
	showbox:function($, $tooltip, e){
		$tooltip.show()
		this.positiontooltip($, $tooltip, e)
	},

	hidebox:function($, $tooltip){
		$tooltip.hide()
	},


	init:function(targetselector){
		jQuery(document).ready(function($){
			var tiparray=ddimgtooltip.tiparray
			var $targets=$(targetselector)
			if ($targets.length==0)
				return
			var tipids=[]
			$targets.each(function(){
				var $target=$(this)
				$target.attr('rel').match(/\[(\d+)\]/) //match d of attribute rel="imgtip[d]"
				var tipsuffix=parseInt(RegExp.$1) //get d as integer
				var tipid=this._tipid=ddimgtooltip.tipprefix+tipsuffix //construct this tip's ID value and remember it
				var $tooltip=ddimgtooltip.createtip($, tipid, tiparray[tipsuffix])
				$target.mouseenter(function(e){
					var $tooltip=$("#"+this._tipid)
					ddimgtooltip.showbox($, $tooltip, e)
				})
				$target.mouseleave(function(e){
					var $tooltip=$("#"+this._tipid)
					ddimgtooltip.hidebox($, $tooltip)
				})
				$target.mousemove(function(e){
					var $tooltip=$("#"+this._tipid)
					ddimgtooltip.positiontooltip($, $tooltip, e)
				})
				if ($tooltip){ //add mouseenter to this tooltip (only if event hasn't already been added)
					$tooltip.mouseenter(function(){
						ddimgtooltip.hidebox($, $(this))
					})
				}
			})

		}) //end dom ready
	}
}

//ddimgtooltip.init("targetElementSelector")
ddimgtooltip.init("*[rel^=imgtip]")
</script>
    </head>
   <body>
    <%--<%@include file="connect.jsp" %>--%>
       <%
            String select = "select top(12) s.TenSach, s.UrlHinh, s.Gia, s.MaSach from Sach s , ChiTietSach cts  where s.MaSach = cts.MaSach ORDER BY NamXB DESC ";       
            int i=1;
             
       %>
   <table border='0' height='150' width='150' cellspacing="30" >
	<tr>
       <%
      rs = st.executeQuery(select);
        if(rs!=null)
        { 
        int count =0;          
        for(i=1; rs.next();i++)
                       {
            out.println("<td><center><a href='http://www.dynamicdrive.com' rel='imgtip[0]'><img src='hinhsach/"+ rs.getString(2)+"' width='110' height='110'/></a><p></p> <a href='chitietsach.jsp?MaSach=" +rs.getString(4)+"'> " + rs.getString(1) +"</a><br/><b>Gia</b> : "+ rs.getString(3) +" VNĐ<br/><a href='chitietsach.jsp?MaSach=" +rs.getString(2)+"'><img src='images/chitiet.jpg' />&nbsp;Xem chi tiết</a></center>");
		out.println("</td>");
                    
                count ++;
                if(count%3==0)
                    out.println("<tr>");
		
                     }
                                     
        } 
       %>
       
  </tr>
</table>
</body>
    
</html>
