package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 
            String sm = "select top(10) s.UrlHinh, s.MaSach from Sach s , ChiTietSach cts  where s.MaSach = cts.MaSach ORDER BY NamXB DESC";
            int j=1;
        

       String tl = "select TenTL, MaTL from THELOAI"; 
           int k;        
       
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(9);
    _jspx_dependants.add("/scripts.jsp");
    _jspx_dependants.add("/connect.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/sachnoibat.jsp");
    _jspx_dependants.add("/sachmoi.jsp");
    _jspx_dependants.add("/rightcontent.jsp");
    _jspx_dependants.add("/search.jsp");
    _jspx_dependants.add("/footer.jsp");
    _jspx_dependants.add("/quangcaotruot2ben.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      beans.ShoppingCart cart = null;
      synchronized (session) {
        cart = (beans.ShoppingCart) _jspx_page_context.getAttribute("cart", PageContext.SESSION_SCOPE);
        if (cart == null){
          cart = new beans.ShoppingCart();
          _jspx_page_context.setAttribute("cart", cart, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=windows-1252\" />\n");
      out.write("<title>Book Online</title>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("   <script src=\"rainbow.js\">\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("<script language=\"javascript\" src=\"http://dai10a1.xtgem.com/javascript/cursor.js\"></script><script\n");
      out.write("language=\"javascript\"\n");
      out.write("src=\"http://dai10a1.xtgem.com/javascript/trochuot2.js\"></script>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("var msg = \" .:: BookOnline.com ::. || .:: Nhà Sách Trực Tuyến ::. \";\n");
      out.write("\n");
      out.write("var pos = 0;\n");
      out.write("\n");
      out.write("var spacer = \" || \";\n");
      out.write("\n");
      out.write("var time_length = 100;\n");
      out.write("\n");
      out.write("function ScrollTitle()\n");
      out.write("\n");
      out.write("{\n");
      out.write("\n");
      out.write("document.title = msg.substring(pos, msg.length) + spacer + msg.substring(0, pos);\n");
      out.write("\n");
      out.write("pos++;\n");
      out.write("\n");
      out.write("if (pos > msg.length) pos=0;\n");
      out.write("\n");
      out.write("window.setTimeout(\"ScrollTitle()\",time_length);\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("ScrollTitle();\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"cuon.js\">\n");
      out.write("</script>\n");
      out.write("        \n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");

            Connection con;
            Statement st = null;
            ResultSet rs=null;
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=WebBanSach";
            con = DriverManager.getConnection(url, "sa", "123456");
            st = con.createStatement();
           }
        catch(Exception e)
         {
            System.out.println("Error: " + e);
         }
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<div id=\"wrap\">\n");
      out.write("    \n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\n");
      out.write("       \t\t<div class=\"logo\"><a href=\"index.jsp\"><img src=\"images/logo.gif\" alt=\"\" title=\"\" border=\"0\" /></a></div>            \n");
      out.write("        <div id=\"menu\">\n");
      out.write("            <ul>                                                                       \n");
      out.write("            <li class=\"selected\"><a href=\"index.jsp\">Trang Chủ</a></li>\n");
      out.write("            <li><a href=\"sach.jsp\">Sách</a></li>\n");
      out.write("            <li><a href=\"myaccount.jsp\">Đăng Nhập</a></li>\n");
      out.write("            <li><a href=\"register.jsp\">Đăng Ký</a></li>\n");
      out.write("            <li><a href=\"about.jsp\">Giới Thiệu</a></li>\n");
      out.write("            <li><a href=\"contact.jsp\">Liên Hệ</a></li>\n");
      out.write("            <li><a href=\"admin/AdminPage.jsp\">Quản Trị</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>        \n");
      out.write("       </div> \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    \n");
      out.write("       <div class=\"center_content\">\n");
      out.write("       \t<div class=\"left_content\">\n");
      out.write("        \t\n");
      out.write("            <div class=\"title\"><span class=\"title_icon\"><img src=\"images/bullet1.gif\" alt=\"\" title=\"\" /></span>Sách Nổi Bật</div>\n");
      out.write("        \n");
      out.write("        \t<div class=\"feat_prod_box\">\n");
      out.write("                    ");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Sách nổi bật</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("        \n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"ddimgtooltip.css\" />\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("\n");
      out.write("var ddimgtooltip={\n");
      out.write("\n");
      out.write("\ttiparray:function(){\n");
      out.write("\t\tvar tooltips=[]\n");
      out.write("\t\t//define each tooltip below: tooltip[inc]=['path_to_image', 'optional desc', optional_CSS_object]\n");
      out.write("\t\t//For desc parameter, backslash any special characters inside your text such as apotrophes ('). Example: \"I\\'m the king of the world\"\n");
      out.write("\t\t//For CSS object, follow the syntax: {property1:\"cssvalue1\", property2:\"cssvalue2\", etc}\n");
      out.write("\n");
      out.write("       tooltips[0]=[\"31.gif\", \"Book Store<br /> Nhà Sách Online\", {background:\"#FFFFFF\", color:\"black\", border:\"3px ridge darkblue\"}]\n");
      out.write("\n");
      out.write("    return tooltips //do not remove/change this line\n");
      out.write("\t}(),\n");
      out.write("\n");
      out.write("\ttooltipoffsets: [20, -30], //additional x and y offset from mouse cursor for tooltips\n");
      out.write("\n");
      out.write("\t//***** NO NEED TO EDIT BEYOND HERE\n");
      out.write("\n");
      out.write("\ttipprefix: 'imgtip', //tooltip ID prefixes\n");
      out.write("\n");
      out.write("\tcreatetip:function($, tipid, tipinfo){\n");
      out.write("\t\tif ($('#'+tipid).length==0){ //if this tooltip doesn't exist yet\n");
      out.write("\t\t\treturn $('<div id=\"' + tipid + '\" class=\"ddimgtooltip\" />').html(\n");
      out.write("\t\t\t\t'<div style=\"text-align:center\"><img src=\"' + tipinfo[0] + '\" /></div>'\n");
      out.write("\t\t\t\t+ ((tipinfo[1])? '<div style=\"text-align:left; margin-top:5px\">'+tipinfo[1]+'</div>' : '')\n");
      out.write("\t\t\t\t)\n");
      out.write("\t\t\t.css(tipinfo[2] || {})\n");
      out.write("\t\t\t.appendTo(document.body)\n");
      out.write("\t\t}\n");
      out.write("\t\treturn null\n");
      out.write("\t},\n");
      out.write("\n");
      out.write("\tpositiontooltip:function($, $tooltip, e){\n");
      out.write("\t\tvar x=e.pageX+this.tooltipoffsets[0], y=e.pageY+this.tooltipoffsets[1]\n");
      out.write("\t\tvar tipw=$tooltip.outerWidth(), tiph=$tooltip.outerHeight(), \n");
      out.write("\t\tx=(x+tipw>$(document).scrollLeft()+$(window).width())? x-tipw-(ddimgtooltip.tooltipoffsets[0]*2) : x\n");
      out.write("\t\ty=(y+tiph>$(document).scrollTop()+$(window).height())? $(document).scrollTop()+$(window).height()-tiph-10 : y\n");
      out.write("\t\t$tooltip.css({left:x, top:y})\n");
      out.write("\t},\n");
      out.write("\t\n");
      out.write("\tshowbox:function($, $tooltip, e){\n");
      out.write("\t\t$tooltip.show()\n");
      out.write("\t\tthis.positiontooltip($, $tooltip, e)\n");
      out.write("\t},\n");
      out.write("\n");
      out.write("\thidebox:function($, $tooltip){\n");
      out.write("\t\t$tooltip.hide()\n");
      out.write("\t},\n");
      out.write("\n");
      out.write("\n");
      out.write("\tinit:function(targetselector){\n");
      out.write("\t\tjQuery(document).ready(function($){\n");
      out.write("\t\t\tvar tiparray=ddimgtooltip.tiparray\n");
      out.write("\t\t\tvar $targets=$(targetselector)\n");
      out.write("\t\t\tif ($targets.length==0)\n");
      out.write("\t\t\t\treturn\n");
      out.write("\t\t\tvar tipids=[]\n");
      out.write("\t\t\t$targets.each(function(){\n");
      out.write("\t\t\t\tvar $target=$(this)\n");
      out.write("\t\t\t\t$target.attr('rel').match(/\\[(\\d+)\\]/) //match d of attribute rel=\"imgtip[d]\"\n");
      out.write("\t\t\t\tvar tipsuffix=parseInt(RegExp.$1) //get d as integer\n");
      out.write("\t\t\t\tvar tipid=this._tipid=ddimgtooltip.tipprefix+tipsuffix //construct this tip's ID value and remember it\n");
      out.write("\t\t\t\tvar $tooltip=ddimgtooltip.createtip($, tipid, tiparray[tipsuffix])\n");
      out.write("\t\t\t\t$target.mouseenter(function(e){\n");
      out.write("\t\t\t\t\tvar $tooltip=$(\"#\"+this._tipid)\n");
      out.write("\t\t\t\t\tddimgtooltip.showbox($, $tooltip, e)\n");
      out.write("\t\t\t\t})\n");
      out.write("\t\t\t\t$target.mouseleave(function(e){\n");
      out.write("\t\t\t\t\tvar $tooltip=$(\"#\"+this._tipid)\n");
      out.write("\t\t\t\t\tddimgtooltip.hidebox($, $tooltip)\n");
      out.write("\t\t\t\t})\n");
      out.write("\t\t\t\t$target.mousemove(function(e){\n");
      out.write("\t\t\t\t\tvar $tooltip=$(\"#\"+this._tipid)\n");
      out.write("\t\t\t\t\tddimgtooltip.positiontooltip($, $tooltip, e)\n");
      out.write("\t\t\t\t})\n");
      out.write("\t\t\t\tif ($tooltip){ //add mouseenter to this tooltip (only if event hasn't already been added)\n");
      out.write("\t\t\t\t\t$tooltip.mouseenter(function(){\n");
      out.write("\t\t\t\t\t\tddimgtooltip.hidebox($, $(this))\n");
      out.write("\t\t\t\t\t})\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t})\n");
      out.write("\n");
      out.write("\t\t}) //end dom ready\n");
      out.write("\t}\n");
      out.write("}\n");
      out.write("\n");
      out.write("//ddimgtooltip.init(\"targetElementSelector\")\n");
      out.write("ddimgtooltip.init(\"*[rel^=imgtip]\")\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("   <body>\n");
      out.write("    ");
      out.write("\n");
      out.write("       ");

            String select = "select top(12) s.TenSach, s.UrlHinh, s.Gia, s.MaSach from Sach s , ChiTietSach cts  where s.MaSach = cts.MaSach ORDER BY NamXB DESC ";       
            int i=1;
             
       
      out.write("\n");
      out.write("   <table border='0' height='150' width='150' cellspacing=\"30\" >\n");
      out.write("\t<tr>\n");
      out.write("       ");

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
       
      out.write("\n");
      out.write("       \n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("</body>\n");
      out.write("    \n");
      out.write("</html>\n");
      out.write("\n");
      out.write("                    \n");
      out.write("            <div class=\"clear\"></div>\n");
      out.write("            </div>\t\n");
      out.write("            \n");
      out.write("           <div class=\"title\"><span class=\"title_icon\"><img src=\"images/bullet2.gif\" alt=\"\" title=\"\" /></span>Sách Mới</div> \n");
      out.write("            \n");
      out.write("           <div class=\"new_products\">\n");
      out.write("\n");
      out.write("                      ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        <div width=\"500\">      \n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("marqueeInit({\n");
      out.write("\tuniqueid: 'mycrawler',\n");
      out.write("\tstyle: {\n");
      out.write("\t\t'padding': '5px',\n");
      out.write("\t\t'width': '450px',\n");
      out.write("\t\t'background': 'url(images/nen.jpg)',\n");
      out.write("\t\t'border': '1px solid #CC3300'\n");
      out.write("\t},\n");
      out.write("\tinc: 8, //speed - pixel increment for each iteration of this marquee's movement\n");
      out.write("\tmouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)\n");
      out.write("\tmoveatleast: 4,\n");
      out.write("\tneutral: 150,\n");
      out.write("\tsavedirection: true\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"marquee\" id=\"mycrawler2\">\n");
      out.write("    ");
      out.write("\n");
      out.write("        \n");
      out.write("        ");
 
            rs = st.executeQuery(sm);
            if(rs!= null)
            {       
                for(j=1;rs.next();j++)
               {
                    out.println("<a href='chitietsach.jsp?MaSach=" +rs.getString(2)+"'><img src='hinhsach/"+ rs.getString(1)+"'  height='90' width='90' /></a> &nbsp;&nbsp;&nbsp;"  );
                }
             }  
             
            
        
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("marqueeInit({\n");
      out.write("\tuniqueid: 'mycrawler2',\n");
      out.write("\tstyle: {\n");
      out.write("\t\t'padding': '2px',\n");
      out.write("\t\t'width': '600px',\n");
      out.write("\t\t'height': '180px'\n");
      out.write("\t},\n");
      out.write("\tinc: 5, //speed - pixel increment for each iteration of this marquee's movement\n");
      out.write("\tmouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)\n");
      out.write("\tmoveatleast: 2,\n");
      out.write("\tneutral: 150,\n");
      out.write("\tsavedirection: true,\n");
      out.write("\trandom: true\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("            </div> \n");
      out.write("          \n");
      out.write("        <div class=\"clear\"></div>\n");
      out.write("        </div><!--end of left content-->\n");
      out.write("        \n");
      out.write("        <div class=\"right_content\">\n");
      out.write("              <div class=\"account_box\">\n");
      out.write("            <c:if test=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope['tendaydu']!=null}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                <b>Xin chào bạn :</b> <h3><font color=\"red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope['tendaydu']}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</font></h3>\n");
      out.write("        </c:if>\n");
      out.write("        <c:if test=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope['tendaydu']!=null}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("            <a href=\"logoutprocess\">Logout</a>\n");
      out.write("        </c:if>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            \n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("         <script type=\"text/javascript\" src=\"image-button.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("                        \n");
      out.write("                  <div class=\"cart\">\n");
      out.write("\n");
      out.write("                  <div class=\"title\"><span class=\"title_icon\"><img src=\"images/cart.gif\" alt=\"\" title=\"\" />&nbsp;<a href=\"giohang.jsp\"</span>Giỏ hàng :</a></div>\n");
      out.write("                  <div class=\"home_cart_content\">\n");
      out.write("                    ");
      out.print(cart.getNumofItem() );
      out.write(" cuốn Sách | <span class=\"red\">TOTAL: 100$</span>\n");
      out.write("                  </div>\n");
      out.write("              \n");
      out.write("                    </div>\n");
      out.write("                  <div class=\"cart\">\n");
      out.write("                  <div class=\"title\"><span class=\"title_icon\"><img src=\"images/timkiem1.jpg\" alt=\"\" title=\"\" />&nbsp;<a href=\"giohang.jsp\"</span>Tìm Kiếm Sách:</a></div>\n");
      out.write("                  <div class=\"home_cart_content\">\n");
      out.write("                  ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Tìm Kiếm Sách</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("imageButtonAdd('image_button1');\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<style type=\"text/css\">\n");
      out.write("input.image_button1\n");
      out.write("{\n");
      out.write("width: 32px;\n");
      out.write("height: 31px;\n");
      out.write("margin: 0px;\n");
      out.write("border: none;\n");
      out.write("padding: 0px;\n");
      out.write("padding-top: 7px;\n");
      out.write("background: url('images/timkiem.jpg');\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("        <form id=\"form1\" name=\"form1\" method=\"post\" action=\"processtimkiemsach.jsp\">\n");
      out.write("            <b><font color=\"#9933FF\" size=\"2\"> Tìm Kiếm: </font></b>\n");
      out.write("  <label for=\"textfield\"></label>\n");
      out.write("  <input name=\"tensach\" type=\"text\" id=\"tensach\" size=\"25\" />\n");
      out.write("  <label for=\"button\"></label>\n");
      out.write("  <input  class=\"image_button1\" id=\"image_button\" type=\"submit\" value=\"\" />\n");
      out.write("    </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("                  </div>\n");
      out.write("                  </div>\n");
      out.write("                        \n");
      out.write("             <div class=\"right_box\">\n");
      out.write("             \n");
      out.write("             \t<div class=\"title\"><span class=\"title_icon\"><img src=\"images/bullet4.gif\" alt=\"\" title=\"\" /></span>Promotions</div> \n");
      out.write("                    <div class=\"new_prod_box\">\n");
      out.write("                        <a href=\"details.html\">product name</a>\n");
      out.write("                        <div class=\"new_prod_bg\">\n");
      out.write("                        <span class=\"new_icon\"><img src=\"images/promo_icon.gif\" alt=\"\" title=\"\" /></span>\n");
      out.write("                        <a href=\"details.html\"><img src=\"images/thumb1.gif\" alt=\"\" title=\"\" class=\"thumb\" border=\"0\" /></a>\n");
      out.write("                        </div>           \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"new_prod_box\">\n");
      out.write("                        <a href=\"details.html\">product name</a>\n");
      out.write("                        <div class=\"new_prod_bg\">\n");
      out.write("                        <span class=\"new_icon\"><img src=\"images/promo_icon.gif\" alt=\"\" title=\"\" /></span>\n");
      out.write("                        <a href=\"details.html\"><img src=\"images/thumb2.gif\" alt=\"\" title=\"\" class=\"thumb\" border=\"0\" /></a>\n");
      out.write("                        </div>           \n");
      out.write("                    </div>                    \n");
      out.write("                    \n");
      out.write("                    <div class=\"new_prod_box\">\n");
      out.write("                        <a href=\"details.html\">product name</a>\n");
      out.write("                        <div class=\"new_prod_bg\">\n");
      out.write("                        <span class=\"new_icon\"><img src=\"images/promo_icon.gif\" alt=\"\" title=\"\" /></span>\n");
      out.write("                        <a href=\"details.html\"><img src=\"images/thumb3.gif\" alt=\"\" title=\"\" class=\"thumb\" border=\"0\" /></a>\n");
      out.write("                        </div>           \n");
      out.write("                    </div>              \n");
      out.write("             \n");
      out.write("             </div>\n");
      out.write("             \n");
      out.write("             <div class=\"right_box\">\n");
      out.write("             \n");
      out.write("             \t<div class=\"title\"><span class=\"title_icon\"><img src=\"images/bullet5.gif\" alt=\"\" title=\"\" /></span>Danh mục sách</div> \n");
      out.write("                \n");
      out.write("       ");
      out.write("\n");
      out.write("\n");
      out.write("       ");

            rs = st.executeQuery(tl);
            if(rs!=null)
            {
                for(k=1;rs.next();k++)
                                {
                 out.println("<li><a href='chitiettheloai.jsp?MaTL="+rs.getString(2) +"'>"+ rs.getString(1) +"</a></li>");
                 
                               }
                }
                
      out.write("\n");
      out.write("                <br/><br/>\n");
      out.write("             \t<div class=\"title\"><span class=\"title_icon\"><img src=\"images/bullet6.gif\" alt=\"\" title=\"\" /></span>Partners</div> \n");
      out.write("                \n");
      out.write("                <ul class=\"list\">\n");
      out.write("                <li><a href=\"#\">accesories</a></li>\n");
      out.write("                <li><a href=\"#\">books gifts</a></li>\n");
      out.write("                <li><a href=\"#\">specials</a></li>\n");
      out.write("                <li><a href=\"#\">hollidays gifts</a></li>\n");
      out.write("                <li><a href=\"#\">accesories</a></li>\n");
      out.write("                <li><a href=\"#\">books gifts</a></li>\n");
      out.write("                <li><a href=\"#\">specials</a></li>\n");
      out.write("                <li><a href=\"#\">hollidays gifts</a></li>\n");
      out.write("                <li><a href=\"#\">accesories</a></li>                              \n");
      out.write("                </ul>  \n");
      out.write("                \n");
      out.write("             \n");
      out.write("             </div>   \n");
      out.write("           \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        </div><!--end of right content-->\n");
      out.write("       \n");
      out.write("       <div class=\"clear\"></div>\n");
      out.write("       </div><!--end of center content-->\n");
      out.write("              \n");
      out.write("       ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" <div class=\"footer\">\n");
      out.write("     \n");
      out.write("       \t<div class=\"left_footer\"><img src=\"images/footer_logo.gif\" alt=\"\" title=\"\" /><br /> <a href=\"http://csscreme.com/freecsstemplates/\" title=\"free templates\"><img src=\"images/csscreme.gif\" alt=\"free templates\" title=\"free templates\" border=\"0\" /></a></div>\n");
      out.write("        <div class=\"right_footer\">\n");
      out.write("        <a href=\"index.jsp\">Trang Chủ</a>\n");
      out.write("        <a href=\"about.jsp\">Giới Thiệu</a>\n");
      out.write("        <a href=\"services.jsp\">Dịch Vụ Khác</a>\n");
      out.write("        <a href=\"privacy.jsp\">Chính Sách Bảo Mật</a>\n");
      out.write("        <a href=\"lienhe.jsp\">Liên Hệ</a>\n");
      out.write("       \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("       </div>\n");
      out.write("\n");
      out.write("    \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("        \n");
      out.write("<div id=\"divAdRight\" style=\"DISPLAY: none; POSITION: absolute; TOP: 0px\"> \n");
      out.write("<a href=\"#\"><img src=\"images\\bannerfpt.jpg\" width=\"125\" /></a>\n");
      out.write("</div> \n");
      out.write("<div id=\"divAdLeft\" style=\"DISPLAY: none; POSITION: absolute; TOP: 0px\"> \n");
      out.write("<a href=\"#\"><img src=\"images\\bannerfpt.jpg\" width=\"125\" /></a>       \n");
      out.write("</div> \n");
      out.write("     <script> \n");
      out.write("    function FloatTopDiv() \n");
      out.write("    { \n");
      out.write("        startLX = ((document.body.clientWidth -MainContentW)/2)-LeftBannerW-LeftAdjust , startLY = TopAdjust+80; \n");
      out.write("        startRX = ((document.body.clientWidth -MainContentW)/2)+MainContentW+RightAdjust , startRY = TopAdjust+80; \n");
      out.write("        var d = document; \n");
      out.write("        function ml(id) \n");
      out.write("        { \n");
      out.write("            var el=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id]; \n");
      out.write("            el.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';}; \n");
      out.write("            el.x = startRX; \n");
      out.write("            el.y = startRY; \n");
      out.write("            return el; \n");
      out.write("        } \n");
      out.write("        function m2(id) \n");
      out.write("        { \n");
      out.write("            var e2=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id]; \n");
      out.write("            e2.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';}; \n");
      out.write("            e2.x = startLX; \n");
      out.write("            e2.y = startLY; \n");
      out.write("            return e2; \n");
      out.write("        } \n");
      out.write("        window.stayTopLeft=function() \n");
      out.write("        { \n");
      out.write("            if (document.documentElement && document.documentElement.scrollTop) \n");
      out.write("                var pY =  document.documentElement.scrollTop; \n");
      out.write("            else if (document.body) \n");
      out.write("                var pY =  document.body.scrollTop; \n");
      out.write("            if (document.body.scrollTop > 30){startLY = 3;startRY = 3;} else {startLY = TopAdjust;startRY = TopAdjust;}; \n");
      out.write("            ftlObj.y += (pY+startRY-ftlObj.y)/16; \n");
      out.write("            ftlObj.sP(ftlObj.x, ftlObj.y); \n");
      out.write("            ftlObj2.y += (pY+startLY-ftlObj2.y)/16; \n");
      out.write("            ftlObj2.sP(ftlObj2.x, ftlObj2.y); \n");
      out.write("            setTimeout(\"stayTopLeft()\", 1); \n");
      out.write("        } \n");
      out.write("        ftlObj = ml(\"divAdRight\"); \n");
      out.write("        //stayTopLeft(); \n");
      out.write("        ftlObj2 = m2(\"divAdLeft\"); \n");
      out.write("        stayTopLeft(); \n");
      out.write("    } \n");
      out.write("    function ShowAdDiv() \n");
      out.write("    { \n");
      out.write("        var objAdDivRight = document.getElementById(\"divAdRight\"); \n");
      out.write("        var objAdDivLeft = document.getElementById(\"divAdLeft\");        \n");
      out.write("        if (document.body.clientWidth < 1000) \n");
      out.write("        { \n");
      out.write("            objAdDivRight.style.display = \"none\"; \n");
      out.write("            objAdDivLeft.style.display = \"none\"; \n");
      out.write("        } \n");
      out.write("        else \n");
      out.write("        { \n");
      out.write("            objAdDivRight.style.display = \"block\"; \n");
      out.write("            objAdDivLeft.style.display = \"block\"; \n");
      out.write("            FloatTopDiv(); \n");
      out.write("        } \n");
      out.write("    }  \n");
      out.write("</script> \n");
      out.write("<script> \n");
      out.write("document.write(\"<script type='text/javascript' language='javascript'>MainContentW = 1000;LeftBannerW = 125;RightBannerW = 125;LeftAdjust = 5;RightAdjust = 5;TopAdjust = 10;ShowAdDiv();window.onresize=ShowAdDiv;;<\\/script>\"); \n");
      out.write("</script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
