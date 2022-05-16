package stdsignup;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myconnection.connection;

/**
 * Servlet implementation class feesdlt
 */
@WebServlet("/feesdlt")
public class feesdlt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public feesdlt() {
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
		String email = request.getParameter("email");
		String tid = request.getParameter("tid");
		String course = request.getParameter("cor");
		String amnt = request.getParameter("amnt");
		String dt = request.getParameter("dt");
		int id=Integer.parseInt(request.getParameter("id"));
		
		
		connection cn = new connection();
		try
		{
			cn.ps = cn.myconn().prepareStatement("update stdcs set cstatus=? where stdemail=? and course=?");
			cn.ps.setString(1, "Rejected");
			cn.ps.setString(2 , email);
			cn.ps.setString(2, course);
			
			cn.ps.executeUpdate();
		
			
			cn.ps = cn.myconn().prepareStatement("delete from fees where id=?");
			cn.ps.setInt(1, id);
			cn.ps.executeUpdate();
			
			cn.ps=cn.myconn().prepareStatement("insert into transactions(stdemail , date , transid , amount , result) values(?,?,?,?,?)");
			cn.ps.setString(1, email);
			cn.ps.setString(2, dt);
			cn.ps.setString(3, tid);
			cn.ps.setString(4, amnt);
			cn.ps.setString(5, "Failed");
			cn.ps.executeUpdate();
			
			
			response.sendRedirect("stdfees.jsp");
		}
		catch(Exception a)
		{
			a.printStackTrace();
		}
	}
		

}
