package firstservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(description="A session", urlPatterns={"/SessionPath"})
public class SessionServlet extends HttpServlet {
	
	private static final long serialVersionUID =1L;
	
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException 

	{
		response.setContentType("text/html");
		PrintWriter p = response.getWriter();
		String username = request.getParameter("userName");
		HttpSession s = request.getSession();//Getting HttpSession
		if(username !="" && username!=null)
		{
			//Here username is object 
			s.setAttribute("savedusername",username);//Storing username with name savedusername
		}
		p.println("<p>Hello "+username+"</p>");
		//s.getAttribute() returns a object so cat to string
		p.println("<p>Session parameter has username as "+(String)s.getAttribute("savedusername")+"</p>");
		p.close();
	}
}
