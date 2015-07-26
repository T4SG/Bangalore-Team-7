<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<form method="" action="islimethodsubmit.jsp">

 <% String url="jdbc:mysql://localhost:3306/test1";
         String user="root";
                 Connection connection=null;
         Statement stmt;
		
        
         try{
             Class.forName("com.mysql.jdbc.Driver");
            
             connection=DriverManager.getConnection(url,user,"root");
             if(connection!=null)
              { stmt=connection.createStatement();
               String query1="select * from fb_ws_ques";
			   
              ResultSet rs= stmt.executeQuery(query1);
            
              
           while(rs.next())
           { int count=0;
           
			  out.println(rs.getString("ques"));
			  out.println("<br><input type='text' name="+rs.getString("q_id")+"/><br>");
			  
                 
          }
              
              }
            
             
            	 
                                  
            	
                          %>
						  
						  </form>
						  </body>
						  </html>
                         
               
                
           <%
           //}
             
         }
         catch(Exception e)
         {
        	 }
         
      %>