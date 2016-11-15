package firstservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XmlServlet extends HttpServlet {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//	@SuppressWarnings("serial")

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		System.out.println("XMLServlet is accessed.");
		
		response.setContentType("text/html");
		
		PrintWriter p =response.getWriter();
		String username = request.getParameter("userName");	
		String userid = request.getParameter("userId");
		p.println("<h1>Hello from the GET Method "+username+ " "+userid+"</h1>");
		
			}
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		System.out.println("XMLServlet is accessed.");
		
		response.setContentType("text/html");
		
		PrintWriter p =response.getWriter();
		String username = request.getParameter("userName");	
		String fullname = request.getParameter("fullName");
		p.println("<h1>Hello from the POST Method "+username+"</h1>");
		p.println("<h2>Your Full Name is "+fullname+"</h2>");
		String profession = request.getParameter("profession");
		p.println("<h3>You are a "+profession+"</h3>");
//		String location = request.getParameter("location");
		//To get value of Multiple Parameters
		String location[] = request.getParameterValues("location");
		p.println("<h4>Your are "+location.length+" places.</h4>");
		
		for( int i =0 ; i<location.length; i++ )
		{
			p.println("<h5>Your "+(i+1)+"th location is "+location[i]+"</h5>");
		}
//				p.println("<h3>Your address is "+location+"</h3>");
			}
}
