<html>
<body>
<form method="" action="">
select school
<select>
 <% String url="jdbc:mysql://ec2-52-69-200-165.ap-northeast-1.compute.amazonaws.com:3306/test";
         String user="root";
		 String var1=request.getParameter("username");
		 String var2=request.getParameter("password");
		 String ut=request.getParameter("utype");
		 String tab ;
		 if(ut=="admin")
		 {
			 tab="admin";
		 }
		 else if(ut=="member")
		 {
			 tab="member";
		 }
		 else
		 {
			 tab="leader";
		 }
          Connection connection=null;
         Statement stmt;
        out.println("working1");
         try{
             Class.forName("com.mysql.jdbc.Driver");
            
             connection=DriverManager.getConnection(url,user,"root");
			 out.println("working2");
             if(connection!=null)
              { stmt=connection.createStatement();
		        if(var1!=null)
				{
					
				String query1="select * from tab ";
               stmt.executeQuery(query1);
            out.println("working3");
              
           while(rs.next())
           {
			   if(rs.next()=="var1")
			   {
			   
                 
          
		        if(ut="admin")
				{
					response.sendRedirect("");
				}
				else if(ut="member")
				{
					response.sendRedirect("");
				}
				else{
					response.sendRedirect("");
				}
		   }
		   }
				}
               String query1="insert into '"+ut+"' values'"('"+var1+"','"+var2+"','"+var3+"','"+var4+"');
               stmt.updateQuery(query1);
            out.println("working3");
              
          
			   
                 
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