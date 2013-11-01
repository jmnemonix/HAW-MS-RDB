import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class HalloSimpleServlet
	extend HttpServlet
{
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException
	{
		res.setContentTyp("text/html");
		printWriter out = res.getWriter();

		String name = "Mein erstes Servlet";

		out.println("<html><head><title>"+name+"</title></head><body bgcolor=\"#000022\" color=\"#ff9900\">");
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
