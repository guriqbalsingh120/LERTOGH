

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import myconnection.connection;



@WebServlet("/jobapp")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)

/**
 * 
 */

public class jobapp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public jobapp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	public static final String UPLOAD_DIR = "images";
    public String dbFileName = "";

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		 response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();

	        String stdemail = request.getParameter("semail");
	        int jid = Integer.parseInt(request.getParameter("jid"));
	        String clg = request.getParameter("clg");
	        String edu = request.getParameter("edu");
	        String marks = request.getParameter("marks");
	        String skill = request.getParameter("skill");
	        String exp = request.getParameter("exp");
	        String job = request.getParameter("job");
	       
	        Part part = request.getPart("res");//
	        String fileName = extractFileName(part);//file name

	        
	        String applicationPath = getServletContext().getRealPath("");
	        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
	        System.out.println("applicationPath:" + applicationPath);
	        File fileUploadDirectory = new File(uploadPath);
	        if (!fileUploadDirectory.exists()) {
	            fileUploadDirectory.mkdirs();
	        }
	        String savePath = uploadPath + File.separator + fileName;
	        System.out.println("savePath: " + savePath);
	        String sRootPath = new File(savePath).getAbsolutePath();
	        System.out.println("sRootPath: " + sRootPath);
	        part.write(savePath + File.separator);
	        new File(savePath);
	        /*if you may have more than one files with same name then you can calculate some random characters
	         and append that characters in fileName so that it will  make your each image name identical.*/
	        dbFileName = UPLOAD_DIR + File.separator + fileName;
	        part.write(savePath + File.separator);
	        //out.println(id+" "+firstName+" "+lastName+" "+fileName+" "+savePath);
	        /*
	         You need this loop if you submitted more than one file
	         for (Part part : request.getParts()) {
	         String fileName = extractFileName(part);
	         part.write(savePath + File.separator + fileName);
	         }*/
	        try {
	        	
	        	
	        	
	            connection cn = new connection();
	            
	            
	            cn.ps = cn.myconn().prepareStatement("insert into stdjs(stdemail ,job, jstatus) values(?,?,?)");
				cn.ps.setString(1, stdemail);
				cn.ps.setString(2, job);
				cn.ps.setString(3, "pending");
				cn.ps.executeUpdate();
				
	            
	            cn.ps = connection.myconn().prepareStatement("insert into jobapp(stdemail,jobid,edu,clg,marks,skill,exp,savepath,resume) values(?,?,?,?,?,?,?,?,?)");
	            cn.ps.setString(1, stdemail);
	            cn.ps.setInt(2, jid);
	            cn.ps.setString(3, edu);
	            cn.ps.setString(4, clg);
	            cn.ps.setString(5, marks);
	            cn.ps.setString(6, skill);
	            cn.ps.setString(7, exp);
	            cn.ps.setString(8, savePath);
	            cn.ps.setString(9, dbFileName);
	        
	            
	            cn.ps.executeUpdate();
	            
	            response.sendRedirect("carr.jsp");
	          
	        } catch (Exception e) {
	            out.println(e);
	        }
	}
	
	        private String extractFileName(Part part) {//This method will print the file name.
	            String contentDisp = part.getHeader("content-disposition");
	            String[] items = contentDisp.split(";");
	            for (String s : items) {
	                if (s.trim().startsWith("filename")) {
	                    return s.substring(s.indexOf("=") + 2, s.length() - 1);
	                }
	            }
	            return "";
	        }
		
		
	

	
	

	

}
