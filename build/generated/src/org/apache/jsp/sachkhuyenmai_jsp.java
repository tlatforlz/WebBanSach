package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class sachkhuyenmai_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 
            String sm = "SELECT UrlHinh, MaSach FROM SACH WHERE KhuyenMai=1";
            int j=1;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(1);
    _jspx_dependants.add("/connect.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
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
