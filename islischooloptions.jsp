<html>
<body>
<form method="" action="">
select school
<select>
 <% String url="jdbc:mysql://localhost:3306/test";
         String user="root";
                 Connection connection=null;
         Statement stmt;
        
         try{
             Class.forName("com.mysql.jdbc.Driver");
            
             connection=DriverManager.getConnection(url,user,"");
             if(connection!=null)
              { stmt=connection.createStatement();
               String query1="select * from schools ";
               stmt.executeQuery(query1);
            
              
           while(rs.next())
           {
			  out.println("<option>"+rs.getString('name')+"</option>"); 
			   
                 
          }
              
              }
            
             
            	 
                                  
            	
                          %>
						  </select>
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