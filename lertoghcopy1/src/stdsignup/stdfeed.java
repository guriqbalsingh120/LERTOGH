package stdsignup;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myconnection.connection;

/**
 * Servlet implementation class stdfeed
 */
@WebServlet("/stdfeed")
public class stdfeed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public stdfeed() {
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
		
        HttpSession ss = request.getSession();
        
		String em = (String)ss.getAttribute("email").toString();
		String feed = request.getParameter("feed");
		
		connection cn = new connection();
		
		try
		{
			cn.ps=cn.myconn().prepareStatement("insert into feedback(email,msg)values(?,?)");
			cn.ps.setString(1, em);
			cn.ps.setString(2, feed);
			cn.ps.executeUpdate();
			
			response.sendRedirect("student.jsp");
		}
		
		catch(Exception a)
		{
			a.printStackTrace();
		}
		
		
	}

}
