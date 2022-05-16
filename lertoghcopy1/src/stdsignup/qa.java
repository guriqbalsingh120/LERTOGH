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
 * Servlet implementation class qa
 */
@WebServlet("/qa")
public class qa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public qa() {
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
		String ans = request.getParameter("ans");
		
		HttpSession ss = request.getSession();
		 String email = (String)ss.getAttribute("femail").toString();
		 
		 try
		 {
		 connection cn = new connection();
		    cn.ps = cn.myconn().prepareStatement("select ans from student where email=?");
		    cn.ps.setString(1, email);
		    cn.rs=cn.ps.executeQuery();
		    while(cn.rs.next())
		    {
		       if(ans.equals(cn.rs.getString("ans")))
		       {
		    	   response.sendRedirect("newp.jsp");
		       }
		    	   
		    }
		 }
		 catch(Exception a)
		 {
			 a.printStackTrace();
	}}
	
	}


