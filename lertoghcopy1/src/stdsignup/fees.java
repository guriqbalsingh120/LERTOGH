package stdsignup;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myconnection.connection;

/**
 * Servlet implementation class fees
 */
@WebServlet("/fees")
public class fees extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fees() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		response.setContentType("text/html");
		
		String course = request.getParameter("course");
		
		String email = request.getParameter("temail");
		
		String amnt = request.getParameter("tamnt");
		String id = request.getParameter("tid");
		String date = request.getParameter("tdt");
		
	
		connection cn = new connection();
		
		try
	
		{
			cn.ps = connection.myconn().prepareStatement("insert into stdcs(stdemail ,course, cstatus) values(?,?,?)");
			cn.ps.setString(1, email);
			cn.ps.setString(2, course);
			cn.ps.setString(3, "pending");
			cn.ps.executeUpdate();
			
			cn.ps = connection.myconn().prepareStatement("insert into fees(stdemail , course , amount , transid , date ) values(?,?,?,?,?)");
			cn.ps.setString(1, email);
	        cn.ps.setString(2, course);
			cn.ps.setString(3, amnt);
			cn.ps.setString(4, id);
			cn.ps.setString(5, date);
			cn.ps.executeUpdate();
			
			
			
			
			response.sendRedirect("student.jsp");
		
		}
		
		catch(Exception a)
		{
			a.printStackTrace();
		}
		
		
		
		
	}

}
