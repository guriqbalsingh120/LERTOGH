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
 * Servlet implementation class stdvar
 */
@WebServlet("/stdvar")
public class stdvar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public stdvar() {
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
	    String pass = request.getParameter("stdpass");
		 try
		    {
	    connection cn = new connection();
	    cn.ps=cn.myconn().prepareStatement(" select * from student where email=? and pass1=?");
	    cn.ps.setString(1,email);
	    cn.ps.setString(2, pass);
	   
	    cn.rs=cn.ps.executeQuery();
	    
	   while(cn.rs.next())
	   {
	        
	    	HttpSession ss = request.getSession();
	    	ss.setAttribute("email", email);
	    	response.sendRedirect("student.jsp");
	   }
	   response.sendRedirect("index.jsp?msg=no");

		    }
		 
		 
	    catch(Exception a)
	    {
	    	a.printStackTrace();
	}
	}
		
		
	}


