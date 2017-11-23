package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;

public final class RegistrationDb_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Online Library : Sign Up</title>\n");
      out.write("        <link href=\"MyStyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Book.ico\" rel=\"shortcut icon\"/>\n");
      out.write("    </head>\n");
      out.write("     <body text=\"white\" body style=\"background-image:url(LoginBg.jpg);background-repeat:no-repeat;background-size:100%;\">\n");
      out.write("         \n");
      out.write("     ");
 Connection conn = null;				
        Statement st = null;					
        ResultSet rs;					
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));		
        String name,email,pass,cpass,status;
       
    	 //Class.forName("java.sql.DriverManager");
        Class.forName("com.mysql.jdbc.Driver");		//It can also be used
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?zeroDateTimeBehavior=convertToNull [root on Default schema]","root","");
        st=conn.createStatement();			//Initialize the st variable			//Initialize the st variable

        name=request.getParameter("name");
        email=request.getParameter("username");
        pass=request.getParameter("password");
        cpass=request.getParameter("con_password");
        status="General";
        int result=st.executeUpdate("INSERT INTO regtable VALUES('"+name+"','"+email+"','"+pass+"','"+cpass+"','"+status+")");		//Execute DML Insert query 
      
      out.write(" \n");
      out.write("         <br><br><br><br><br><h1>Congratulations!! You have successfully been registered. Please <a href=\"Login.jsp\">Login</a> to continue. </h1>\n");
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
