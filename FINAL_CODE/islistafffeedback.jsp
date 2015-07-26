<
<html>
<body>
<form method="" action="">

 <% String url="jdbc:mysql://localhost:3306/test";
         String user="root";
                 Connection connection=null;
         Statement stmt;
		 int count=0;
        
         try{
             Class.forName("com.mysql.jdbc.Driver");
            
             connection=DriverManager.getConnection(url,user,"");
             if(connection!=null)
              { stmt=connection.createStatement();
               String query1="select * from fb_ws_ques";
			   
              ResultSet rs= stmt.executeQuery(query1);
            
              
           while(rs.next())
           { String name=q+to_string(count);
			  out.println(rs.getString('Ques'));
			  out.println("<br><input type='text' name=<= name>/><br>");
			   count++;
                 
          }
              
              }
            
             
            	 
                                  
            	
                          %>
						  
						  </form>
						  </body>
						  </html>
                          <jsp:forward page="">
                              <jsp:param name=""  value="" />
                          </jsp:forward>
               
                
           <%
           //}
             
         }
         catch(Exception e)
         {
        	%> <jsp:forward page="project.jsp">
             <jsp:param name="FailReason"  value="your account not created. please use different username" />
         </jsp:forward>     <%    }
         
      %>