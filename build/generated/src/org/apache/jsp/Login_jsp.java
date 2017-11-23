package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Online Library : Login</title>\n");
      out.write("        <link href=\"MyStyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Book.ico\" rel=\"shortcut icon\"/>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body body style=\"background-image:url(LoginBg.jpg);background-repeat:no-repeat;background-size:100%;\">\n");
      out.write("        <h1 style=\"color: #ffffff; font-family: 'Droid serif', serif; font-size: 36px; font-weight: 400; font-style: italic; line-height: 44px; margin: 0 0 12px; text-align: center\" >Welcome to Online Library</h1>\n");
      out.write("        <div id=\"loginid\" >\n");
      out.write("            <h2 align=\"center\" style=\"height:25%;\"><b class=\"avatar\"><img src=\"Key-512.png\"></b></h2>\n");
      out.write("        <form action=\"\" method=\"post\">\n");
      out.write("            <div>\n");
      out.write("            <label>Username:</label><br>\n");
      out.write("            <input type=\"text\" name=\"username\" required autofocus placeholder=\"abc@xyz.com\"<br><br>\n");
      out.write("            <label>Password:</label><br>\n");
      out.write("            <input type=\"password\" name=\"password\" required placeholder=\"Password\"><br><br>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("            <input type=\"submit\" value=\"Sign in\" name=\"submit\" style=\"float:right;line-height:30px;\">\n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("            <a href=\"SignUp.jsp\"><font face=\"Comic Sans MS\">Register Me</font></a>\n");
      out.write("        \n");
      out.write("\t\t\n");
      out.write("       ");
 
        String status = "";
        String username = request.getParameter("username");
        if(request.getParameter("submit")!= null)   
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");                 
            Statement st = conn.createStatement();	     
            ResultSet rs;                   
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
       
            rs = st.executeQuery("Select * From regtable where EmailID='"+request.getParameter("username")+"'");
            
            if(rs.next())
            {
                if(rs.getString(3).equals(request.getParameter("password")))
                {
                    status = rs.getString(4);
                    session.setAttribute("username",username);
                    session.setAttribute("status", status);
                    response.sendRedirect("Home.jsp");
                    //request.getRequestDispatcher("Profile.jsp").forward(request, response);
                   
                }
                else
                {
                    out.println("Invalid username or Password");
                }
            }
            else
            {
                out.println(" Username not registerd!");
            }
        }
        
      out.write("\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
