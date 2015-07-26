<html>
<body>
<form method="" action="">
select school
<select>
 <% String url="jdbc:mysql://ec2-52-69-200-165.ap-northeast-1.compute.amazonaws.com:3306/test";
         String user="root";
                 Connection connection=null;
         Statement stmt;
        out.println("working1");
         try{
             Class.forName("com.mysql.jdbc.Driver");
            
             connection=DriverManager.getConnection(url,user,"root");
			 out.println("working2");
             if(connection!=null)
              { stmt=connection.createStatement();
               String query1="select * from school ";
               stmt.executeQuery(query1);
            out.println("working3");
              
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