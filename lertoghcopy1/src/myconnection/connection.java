package myconnection;
import java.sql.*;
// conection of  database
public class connection {

		
		public static Connection conn;
		public PreparedStatement ps;
		public ResultSet rs;
		
		public static Connection myconn()
		{
			
		    try
		    {
				
			
			Class.forName("com.mysql.jdbc.Driver");
		    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lertogh","root","root");
			return conn;
		
			}
			
			catch(ClassNotFoundException a)
			{
				a.printStackTrace();
			}
		
			catch(Exception a)
			{
				a.printStackTrace();
			}
			
		     return null;
		
		
		}

}
