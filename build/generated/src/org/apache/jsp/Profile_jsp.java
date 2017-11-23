package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Profile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <ul id=\"menu\">\n");
      out.write("        <li><a href=\"#\">Home</a></li>\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Categories</a>\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"#\">Fiction</a></li>\n");
      out.write("                <li><a href=\"#\">Biography & Memoir</a></li>\n");
      out.write("                <li><a href=\"#\">Sports</a></li>\n");
      out.write("                <li><a href=\"#\">Technical</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Books</a>\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"#\">Issue Books</a></li>\n");
      out.write("                <li><a href=\"#\">Submit Books</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("        <li><a href=\"#\">Contact</a></li>\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Admin Panel</a>\n");
      out.write("            <ul>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">Books</a>\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"#\">Add Book</a></li>\n");
      out.write("                        <li><a href=\"#\">Delete Book</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">All Members</a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
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
      out.write("        <iframe name=\"frm1\" width=\"99%\" height=\"68%\" style=\"border:none;\">\n");
      out.write("            \n");
      out.write("        </iframe>\n");
      out.write("        <h4 align=center style=\"background:black;padding:5pt;opacity:0.5;border-radius:10pt;\"><font color=white>\n");
      out.write("        Online Library<br>Developed By: Souvik Ghosh & Sukanta Roy</font>\n");
      out.write("        </h4>\n");
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
