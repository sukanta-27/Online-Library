package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Online Library: Profile</title>\n");
      out.write("        <link href=\"Book.ico\" rel=\"shortcut icon\"/>\n");
      out.write("        <link href=\"Profile.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body body style=\"background-image:url(5074157.jpg);background-repeat:no-repeat;background-size:100%;\">\n");
      out.write("            ");
 String user = session.getAttribute("username").toString();
               String stat = session.getAttribute("status").toString();
            
      out.write("\n");
      out.write("        <ul id=\"menu\">\n");
      out.write("        <li><a href=\"Home.jsp\">Home</a></li>\n");
      out.write("        \n");
      out.write("        <li><a href=\"Search.jsp\">Search</a></li>\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Books</a>\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"#\">Issue Books</a></li>\n");
      out.write("                <li><a href=\"#\">Submit Books</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("        <li><a href=\"#\">Contact</a></li>\n");
      out.write("        ");
 
               if(stat.equals("Admin")){
        
      out.write("\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Admin Panel</a>\n");
      out.write("            <ul>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"AddBooks.jsp\">Add Book</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"DeleteBooks.jsp\">Delete Book</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"AllMembers.jsp\">All Members</a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("        ");

               }
        
      out.write("\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Profile</a>\n");
      out.write("        <ul>\n");
      out.write("            <li><a href=\"Myprofile.jsp\">My Profile</a></li>\n");
      out.write("            <li><a href=\"UpdateProfile.jsp\">Update Profile</a></li>\n");
      out.write("            <li><a href=\"DeleteProfile.jsp\">Delete Account</a></li>\n");
      out.write("            <li><a href=\"LogOut.jsp\">Logout</a></li>\n");
      out.write("        </ul>\n");
      out.write("        </li>\n");
      out.write("        </ul>\n");
      out.write("        \n");
      out.write("        ");
     String id="",name="",author="",stock="",category="";
               Connection conn;
               Statement st;
               ResultSet rs;
               
               Class.forName("com.mysql.jdbc.Driver");		//It can also be used
               conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
               st=conn.createStatement();
               
               rs = st.executeQuery("SELECT * FROM books_table");
               out.println("<h2 align='center' color = 'white'>~:<u>Books</u>:~</h2><br>");            
            out.println("<table border=2 cellspacing=0 bordercolor='brown' align='center' width='80%'>");
            out.println("<tr bgcolor='pink'><th>Book ID</th><th>Book Name</th><th>Author Name</th><th>Catagory</th><th>Stock</th></tr>");
            while(rs.next())                                //Loop to fetch the records from ResultSet variable until the last record achieved
            {
                
                id=rs.getString(1);
                name=rs.getString(2);
                author=rs.getString(3);
                category=rs.getString(4);
                stock=rs.getString(5);
                out.println("<tr bgcolor = 'white'><th>"+id+"</th><th>"+name+"</th><th>"+author+"</th><th>"+category+"</th><th>"+stock+"</th></tr>");                
            }
        
      out.write("\n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("    \n");
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
