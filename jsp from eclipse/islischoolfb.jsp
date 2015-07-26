<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<form method="" action="">
select school
<select>
 <% String url="jdbc:mysql://localhost:3306/test1";
         String user="root";
                 Connection connection=null;
         Statement stmt;
         ResultSet rs;
        out.println("working1");
         try{
             	Class.forName("com.mysql.jdbc.Driver");
             	connection=DriverManager.getConnection(url,user,"root");
			 	out.println("working2");
			 	stmt=connection.createStatement();
			    if(connection!=null)
             	 {
            		  String query1="select * from school";
            	 	rs=stmt.executeQuery(query1);
              	 	  out.println("working3");
          	         while(rs.next())
           			{
			  			out.println("<option>"+rs.getString("name")+"</option><br>"); 
			   
                 
         			 }
              
              }
            
             
            	 
                                  
            	
                          %>
						 </select>
						  </form>
						  </body>
						  </html>
                         
               
                
           <%
           //}
             
         }
         catch(Exception e)
         {
         out.println("Error ");
        	  }
         
      %>