<html>
<body>
<form method="" action="">
select school
<select>
 <% String url="jdbc:mysql://ec2-52-69-200-165.ap-northeast-1.compute.amazonaws.com:3306/test";
         String user="root";
		 String var1=request.getParameter("uname");
		 String var2=request.getParameter("upwd");
		 String var3=request.getParameter("urpwd");
		 String var4=request.getParameter("tel");
		 String ut=request.getParameter("utype");
                 Connection connection=null;
         Statement stmt;
        out.println("working1");
         try{
             Class.forName("com.mysql.jdbc.Driver");
            
             connection=DriverManager.getConnection(url,user,"root");
			 out.println("working2");
             if(connection!=null)
              { stmt=connection.createStatement();
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