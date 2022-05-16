package control;

// all queries of database here



import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import myconnection.connection;

public class control {
	
	
	connection cn = new connection();
	private Request request;
	
	
	  
	public boolean stdlogin(String email,String password)
	{
		try
		{
			
		
		cn.ps=connection.myconn().prepareStatement("select pass1 from student where email=?");
		cn.ps.setString(1, email);
		cn.rs=cn.ps.executeQuery();
		
		 while(cn.rs.next())
		 {
			 String pass =cn.rs.getString("pass1");
			 
			 
			 if(pass.equals(password))
			 {
				HttpSession ss = request.getSession();
				
				ss.setAttribute("stdemail",email );
				return true;
				
			 }
		 }}
		
		
		
		catch(Exception a)
		{
			a.printStackTrace();
		}
		
		
		
		return false;
		 
		
		
	}   // stdlogin method close
	
	
	

}
