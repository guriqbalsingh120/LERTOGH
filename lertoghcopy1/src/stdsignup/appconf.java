package stdsignup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myconnection.connection;

/**
 * Servlet implementation class appconf
 */
@WebServlet("/appconf")
public class appconf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public appconf() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		response.setContentType("text/html");
		String email = request.getParameter("stdemail");
		String job = request.getParameter("job");
		int id = Integer.parseInt(request.getParameter("sid"));
	
		connection cn = new connection();
		
		try
		{
			cn.ps = cn.myconn().prepareStatement("update stdjs set jstatus=? where stdemail=? and job=?");
			cn.ps.setString(1, "Accepted , we send you an email.");
			cn.ps.setString(2, email);
			cn.ps.setString(3, job);
			cn.ps.executeUpdate();
			
			
			cn.ps = cn.myconn().prepareStatement("delete from jobapp where id=?");
			cn.ps.setInt(1, id);
			cn.ps.executeUpdate();
			
			response.sendRedirect("jobdb.jsp");
		}
		
		catch(Exception a)
		{
			a.printStackTrace();
		}
	}
	
	

}
