package stdsignup;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myconnection.connection;

/**
 * Servlet implementation class jsdlt
 */
@WebServlet("/jsdlt")
public class jsdlt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public jsdlt() {
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
		
		connection cn = new connection();
		try
		{
			cn.ps = cn.myconn().prepareStatement("delete from stdjs where stdemail=?");
			cn.ps.setString(1, email);
			cn.ps.executeUpdate();
			
			response.sendRedirect("stdmsg.jsp");
			
		}
		
		catch(Exception a)
		{
			a.printStackTrace();
		}
	}

}
