package stdsignup;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myconnection.connection;

/**
 * Servlet implementation class jobdlt
 */
@WebServlet("/jobdlt")
public class jobdlt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public jobdlt() {
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
		
		response.setContentType("html/text");
		
	
		connection cn = new connection();
		
		try
		{
			String id  = request.getParameter("id");
		    int id1 = Integer.parseInt(id);
			cn.ps=cn.myconn().prepareStatement("delete from carrers where id=?");
			cn.ps.setInt(1,id1);
			cn.ps.executeUpdate();
			response.sendRedirect("jobdb.jsp");
		}
		catch(Exception a)
		{
			a.printStackTrace();
		}
		
	}

}
