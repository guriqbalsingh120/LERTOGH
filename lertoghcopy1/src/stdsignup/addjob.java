package stdsignup;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myconnection.connection;

/**
 * Servlet implementation class addjob
 */
@WebServlet("/addjob")
public class addjob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addjob() {
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
		
		String job = request.getParameter("job");
		String about = request.getParameter("about");
		String skill = request.getParameter("skill");
		String pack = request.getParameter("pack");
		String exp = request.getParameter("exp");
		
		connection cn = new connection();
		
		try
		{
			cn.ps=cn.myconn().prepareStatement("insert into carrers(job,about,skill,pack,exp)values(?,?,?,?,?)");
			cn.ps.setString(1, job);
			cn.ps.setString(2,about);
			cn.ps.setString(3, skill);
			cn.ps.setString(4,  pack);
			cn.ps.setString(5, exp);
			cn.ps.executeUpdate();
			response.sendRedirect("jobdb.jsp");
		}
		
		catch(Exception a)
		{
			a.printStackTrace();
		}
		
	}

}
