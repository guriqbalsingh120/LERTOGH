package stdsignup;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myconnection.connection;

/**
 * Servlet implementation class ufeed
 */
@WebServlet("/ufeed")
public class ufeed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ufeed() {
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
		
		String em = request.getParameter("uemail");
		String feed = request.getParameter("feed");
		
		connection cn = new connection();
		
		try
		{
			cn.ps=cn.myconn().prepareStatement("insert into feedback(email,msg)values(?,?)");
			cn.ps.setString(1, em);
			cn.ps.setString(2, feed);
			cn.ps.executeUpdate();
			
			response.sendRedirect("index.jsp");
		}
		
		catch(Exception a)
		{
			a.printStackTrace();
		}
		
		
		
	}

}
