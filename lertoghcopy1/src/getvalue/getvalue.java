package getvalue;
// get values from user and process them
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.control;

/**
 * Servlet implementation class getvalue
 */
@WebServlet("/getvalue")
public class getvalue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getvalue() {
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
			String email = request.getParameter("email");
			String pass = request.getParameter("pass1");
			  PrintWriter pw = response.getWriter();
			
			
			if(new control().stdlogin(email,pass))// control class stdlogin method call
			{
				pw.print("sucsessfull");
			}
			
			else
			{
				pw.print("unsucsessfull");
			}
			
			
		}
		
		catch(Exception a)
		{
			a.printStackTrace();
		}
		
		
		
		
	}

}
