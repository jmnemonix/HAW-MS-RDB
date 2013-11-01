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

		// Eingaben von Website hollen
		String name = req.getParameter("vorname");
		String zahl = req.getParameter("anzahl");

		int z = Integer.parseInt(zahl.trim());

		out.println("<html><head><title>unser kleines Servlet</title></head><body bgcolor=\"#9999DD\" color=\"#440000\">");
		

		for(int i=0; i<z ; i++) out.println("<p>Hallo "+name+" Nr."+i+"</p>");


		out.println("</body></html>");

		out.close();
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException
	{
		doGet(req,res);
	}
}
