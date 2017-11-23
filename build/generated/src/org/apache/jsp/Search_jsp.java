package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;

public final class Search_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Search Book Info</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <script src=\"jquery-2.1.1.js\"></script>\n");
      out.write("        <title>Online Library: Profile</title>\n");
      out.write("        <link href=\"Book.ico\" rel=\"shortcut icon\"/>\n");
      out.write("        <link href=\"Profile.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body  style=\"background-image:url(5074157.jpg);background-repeat:no-repeat;background-size:100%;\">\n");
      out.write("         ");
 String user = session.getAttribute("username").toString();
               String stat = session.getAttribute("status").toString();
            
      out.write("\n");
      out.write("        <ul id=\"menu\">\n");
      out.write("        <li><a href=\"Home.jsp\">Home</a></li>\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Categories</a>\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"#\">Fiction</a></li>\n");
      out.write("                <li><a href=\"#\">Biography & Memoir</a></li>\n");
      out.write("                <li><a href=\"#\">Sports</a></li>\n");
      out.write("                <li><a href=\"#\">Technical</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
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
      out.write("                    <a href=\"#\">Add Book</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">Delete Book</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">All Members</a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("        ");

               }
        
      out.write("\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Profile</a>\n");
      out.write("        <ul>\n");
      out.write("            <li><a href=\"#\">My Profile</a></li>\n");
      out.write("            <li><a href=\"#\">Update Profile</a></li>\n");
      out.write("            <li><a href=\"#\">Delete Account</a></li>\n");
      out.write("            <li><a href=\"#\">Logout</a></li>\n");
      out.write("        </ul>\n");
      out.write("        </li>\n");
      out.write("        </ul>\n");
      out.write("        <div><h2>Book Display:~</h2></div>\n");
      out.write("        <form name=\"f1\" method=\"post\" action=\"ShowBooks.jsp\">\n");
      out.write("            Select an option to sort the details:~\n");
      out.write("            <select name=\"booksearch\" id=\"sel\" required>\n");
      out.write("                <option value=\"\">Select</option>\n");
      out.write("                <option value=\"BOOKS_NAME\">Search By Book's Name</option>\n");
      out.write("                <option value=\"AUTHOR\">Group By Author</option>\n");
      out.write("                <option value=\"GENRE\">Group By Genre</option>\n");
      out.write("                \n");
      out.write("            </select>\n");
      out.write("            <br><br><input type=\"text\" id=\"other\" style=\"display: none;\" name=\"t1\" size=50 placeholder=\"Eg: Harry Potter And The Chamber Of Secrets\" required><br>\n");
      out.write("            <input type=\"Submit\" value=\"Submit\"> <input type=\"Reset\">\n");
      out.write("        </form>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $('#sel').change(function() \n");
      out.write("            {\n");
      out.write("                $('#other').css('display', ($(this).val() === 'BOOKS_NAME') ? 'block' : 'none');\n");
      out.write("            });\n");
      out.write("        </script>\n");
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
