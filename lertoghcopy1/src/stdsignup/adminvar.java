package stdsignup;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminvar
 */
@WebServlet("/adminvar")
public class adminvar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminvar() {
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
		
		 try
		    {
		response.setContentType("text/html");
		String email = request.getParameter("ademail");
	    String pass = request.getParameter("adpass");
	   
	    	
	    
	    if(email.equals("admin904@gmail.com") && pass.equals("admin904"))
	    {
	    	response.sendRedirect("admin.jsp");
	    }
	    
	    response.sendRedirect("index.jsp?msg=no");
	    
	    }
	    catch(Exception a)
	    {
	    	a.printStackTrace();
	    }
	}

}
