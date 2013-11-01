import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class HalloSimpleServlet
	extends HttpServlet
{

	public void doGet(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException
	{

//		res.setContentTyp("text/html");

		PrintWriter out = res.getWriter();

		String name = "Mein erstes Servlet";

		out.println("<html><head><title>"+name+"</title></head><body bgcolor=\"#9999DD\" color=\"#440000\">");
		out.println("<p>Hallo "+name+"</p>");
		out.println("</body></html>");

		out.close();
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException
	{
		doGet(req,res);
	}
}

/*
/Erstes Java Servlet
import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;

public class HalloSimpleServlet extends HttpServlet
{
   public void doGet(HttpServletRequest req, HttpServletResponse res)
      throws ServletException, IOException
   {
      PrintWriter out =  res.getWriter();
      String name="Mein erstes Servlet";
      out.println("<html><head><title> "+name+"</title></head>");
      out.println("<body bgcolor=\"#ccFFcc\"> ");
      out.println(name);
      out.println("<hr></body></html>");
      out.close();
   }
   public void doPost(HttpServletRequest req, HttpServletResponse res)
      throws ServletException, IOException
   {
      doGet(req,res);
   }
    
}*/
