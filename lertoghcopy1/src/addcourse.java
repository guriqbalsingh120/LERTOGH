

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



@WebServlet("/addcourse")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)

/**
 * 
 */

public class addcourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addcourse() {
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

	        String title = request.getParameter("head");
	        String cont = request.getParameter("cont");
	        String dt = request.getParameter("dt");
	        String fees = request.getParameter("fees");
	        String time = request.getParameter("time");
	        String date = request.getParameter("date");
	        String link = request.getParameter("link");
	        String drive = request.getParameter("drive");
	       
	        Part part = request.getPart("file");//
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
	            
	            cn.ps = connection.myconn().prepareStatement("insert into course(title,content,dt,logo,savepath,fees,ctime,clink,cdate,drive) values(?,?,?,?,?,?,?,?,?,?)");
	            cn.ps.setString(1, title);
	            cn.ps.setString(2, cont);
	            cn.ps.setString(3, dt);
	            cn.ps.setString(4, dbFileName);
	            cn.ps.setString(5, savePath);
	            cn.ps.setString(6, fees);
	            cn.ps.setString(7, time);
	            cn.ps.setString(8, link);
	            cn.ps.setString(9, date);
	            cn.ps.setString(10, drive);
	            
	            cn.ps.executeUpdate();
	            
	            response.sendRedirect("admin.jsp");
	          
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
