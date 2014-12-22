<%-- 
    Document   : UploadFile
    Created on : Dec 22, 2014, 3:38:22 PM
    Author     : PhuThuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

<%
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   //ServletContext context = pageContext.getServletContext();
   String filePath = getServletContext().getInitParameter("file-upload");

   // Verify the content type
   String contentType = request.getContentType();
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
        
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("c:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      out.println("1");
      try{ 
          out.println("2");
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();

         out.println("<html>");
         out.println("<head>");
         out.println("<title>JSP File upload</title>");  
         out.println("</head>");
         out.println("<body>");
         while ( i.hasNext () ) 
         {
             out.println("3");
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () )	
            {
                out.println("4");
            // Get the uploaded file parameters
            String fieldName = fi.getFieldName();
            String fileName = fi.getName();
            boolean isInMemory = fi.isInMemory();
            long sizeInBytes = fi.getSize();
            out.println(fileName);
            // Write the file
            if( fileName.lastIndexOf("\\") >= 0 ){
            file = new File( filePath +
            fileName.substring( fileName.lastIndexOf("\\"))) ;
            }else{
            file = new File( filePath +
            fileName.substring(fileName.lastIndexOf("\\")+1)) ;
            }
            out.println(filePath);
            try{
                
                fi.write( file ) ;
            } catch(Exception ex){
                System.out.println("lỗi .....");
                System.out.println(ex);
            }
            out.println("4");
            out.println("Uploaded Filename: " + filePath + 
            fileName + "<br>");
            } else{
                out.println("sai ding dan");
            }
         }
         out.println("</body>");
         out.println("</html>");
      }catch(Exception ex) {
         System.out.println(ex);
         
      }
   }else{
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
   response.sendRedirect("newjsp1.jsp");
%>

