package Servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
@MultipartConfig
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //fetch form data
            
            Part part = request.getPart("file");
            String fileName = part.getSubmittedFileName();
            
            String path = getServletContext().getRealPath("/files/" + fileName); // Use /files/ directory for storing files
            
            InputStream is = part.getInputStream();
            boolean test = uploadFile(is,path);
            if(test){
                request.setAttribute("filePath", "files/" + fileName); // Set the file path as a request attribute
                request.getRequestDispatcher("uploaded.jsp").forward(request, response); // Forward to uploaded.jsp page
            }else{
                out.println("something wrong");
            }
        }
    }

	
	public boolean uploadFile(InputStream is, String path){
	    boolean test = false;
	    try{
	        byte[] byt = new byte[is.available()];
	        is.read(byt); // Read input stream content into byte array
	        
	        FileOutputStream fops = new FileOutputStream(path);
	        fops.write(byt);
	        fops.flush();
	        fops.close();
	        
	        test = true;
	        
	    }catch(Exception e){
	        e.printStackTrace();
	    }
	    
	    return test;
	}
	
	
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 processRequest(request, response);
	}
	

}
