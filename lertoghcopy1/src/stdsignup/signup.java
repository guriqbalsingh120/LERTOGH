package stdsignup;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myconnection.connection;

/**
 * Servlet implementation class signup
 */
@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
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
		PrintWriter pw = response.getWriter();
		 connection cn = new connection();
		
		
			
		 String fname = request.getParameter("fname");
		 String lname = request.getParameter("lname");
		 String age=    request.getParameter("age");
		 String gender=    request.getParameter("gender");
		 String clg=    request.getParameter("clg");
		 String email = request.getParameter("email");
		 
		 String mob = request.getParameter("mob");
		 String adrs = request.getParameter("adrs");
		
		 String sem = request.getParameter("sem");
		 String secq = request.getParameter("secq");
		 String ans = request.getParameter("ans");
		 String pass1 = request.getParameter("pass1");
		 
		 
	
		 try
			{                                            
		 cn.ps=connection.myconn().prepareStatement("insert into student(fname,lname,age,gender,collage,email,mob,sem,secq,ans,pass1,adrs)values(?,?,?,?,?,?,?,?,?,?,?,?)");
		
		 
		 cn.ps.setString(1, fname);
		 cn.ps.setString(2, lname);
		 cn.ps.setString(3, age);
		 cn.ps.setString(4, gender);
		 cn.ps.setString(5, clg);
		 cn.ps.setString(6, email);
		 cn.ps.setString(7, mob);
		 cn.ps.setString(8, sem);
		
		 cn.ps.setString(9, secq);
		 cn.ps.setString(10, ans);
		 cn.ps.setString(11, pass1);
		 cn.ps.setString(12, adrs);
		 
		 cn.ps.executeUpdate();
		 
		
			response.sendRedirect("index.jsp");
	
	
		
		
		
	}
		
		catch(Exception a)
		{
			a.printStackTrace();
		}

	}}
