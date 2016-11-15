package firstservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description="Context Servlet Name", urlPatterns={"/ContextPath"},
initParams={@WebInitParam(name="defaultUser",value="Rojina Panta")})

public class ContextServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		response.setContentType("text/html");
		PrintWriter p = response.getWriter();
		String username = request.getParameter("userName");
		ServletContext c = request.getServletContext();
		//Session is for particular user/browser
		//Context works across applications/browser
		if(username != "" && username != null)
		{
			c.setAttribute("SavedContextUserName", username);
		}
		p.println("<p> The username is "+username+"</p>");
		p.println("<p> The context username is "+(String)c.getAttribute("SavedContextUserName")+"</p>");
		
		p.println("<p></p>"+this.getServletConfig().getInitParameter("defaultUser"));
		p.close();
	}

}


