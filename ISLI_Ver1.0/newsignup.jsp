<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%
 	if(session.getAttribute("userName")!=null)
 	{
 			
 	 		String site = new String("Home.jsp");
  			 response.setStatus(response.SC_MOVED_TEMPORARILY);
   			response.setHeader("Location", site); 
 	
 	}
 
 
  %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
body,td,th {
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
	color: #000;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
#header{
	text-shadow:#0CF;
	text-justify:auto;
	font-style:italic;
}
#button,#button1,#button2,#button4,#button5{
  color: #009F00;
  font-weight: bold;
  font-size: 150%;
  text-transform: uppercase;
  font-family:"Comic Sans MS", cursive;
}
#text
{
	font-family:Andulus;
	font-size:14px;
	display:block;
	margin-right:892px;
	border:dashed;
	border-color:#F03;
	text-align:center;
	background-color:#FFEAFF
}

#content{
	font-family:"Trebuchet MS", Arial, Helvetica, sans-serif

}
body {
	background-color: #FFFFFF;
	background-image: url(bg.jpg);
	background-size: 880px 900px;
	background-repeat: no-repeat;
	background-position: top right;	
}
</style>

<script type="text/javascript">

function myfunc(uname,pwd,rpwd,fname,lname,dob,email,sq,sanw)
{
	var s=document.getElementById(uname);
	var op =s.value.length;
		//alert("Hello");
	var usernameRegex =/^[a-zA-Z]+$/;
	//var len=op.length;
	if(op<3)
		{
			alert(op);
	 		alert("Enter a Valid username");
			return false;
		}
		
		if(!s.value.match(usernameRegex))
		{
			alert("Enter a Valid username");
			return false;
		}
		else
		{
			//alert("hello");
			if(myfunc2(pwd,rpwd))
			{
				if(myfunc3(fname,lname))
				{
					if(myfunc4(email))
					{
						//alert("CHeck s Aq");
						var sqq=document.getElementById(sq).value;
						var sanww=document.getElementById(sanw).value;
						if(sqq.length>5 && sanww.length>4)
						{
							//alert("Correct q and A");
							alert("Succcess");
						}
						else
						{
							//alert("wrong q and a");
						}
						
						
					}
				}
				
			}
		}
}

function myfunc2(pwd,rpwd)
{
	var s1=document.getElementById(pwd);
	var pasd= /^(?=.*?[0-9])(?=.*?[a-zA-Z]).{3,30}$/;
	var s2=document.getElementById(rpwd);
	var op1=s1.value;
	//alert("A8779DEF");
	if(op1.length<=3)
		{
	 		alert("Enter a Valid Password");
			return false;
		}
		if(!op1.match(pasd))
		{
			alert("Enter Valid Password");
			return false;

		}
		else
		{
			if((s1.value).match(s2.value))
			{
				//alert("Succcess");
				return true;
				
			}
			else
			{
				alert("password and retype password mismatch");
							return false;
      		}
			
		}
	
}
function myfunc3(fname,lname)
{
	var s1=document.getElementById(fname);
	var s2=document.getElementById(lname);
	var mth=/^[a-zA-Z]+$/;
	if(!((s1.value).match(mth)))
	{
		alert("Wrong Firstname");
		return false;
	}
	else
	{
		if(!((s2.value).match(mth)))
		{
			alert("Wrong Lastname");
			return false;
		}
		else
		{
			alert("Success Message ");
			return true;
		}
	}
	
}

function myfunc4(email)
{
	var s1=document.getElementById(email);
  var re =/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  if((s1.value).match(re))
  {
	  return true;
  }
  else
  {
	  alert("Wrong email");
	  return false;
  }
  
}



</script>
</head>

<body text="#D6D6D6" leftmargin="10" topmargin="10" marginwidth="10" marginheight="10">

<p>
    <label for="Home"></label>
</p>


<form name="regform" id="regform" action="newsignupconn.jsp" method="post" >
<select name="utype">
<option>member</option>
<option>option</option>
<option>leader</option>

</select>

                   
                    Username/Email-id<input type="text"  id="username" name="uname"/>
                    
                   Password:<input type="password" id="pwd" name="upwd"/>
                    
                      Re type Password : <input type="password" name="rpass" id="rpwd" name="urpwd" />
                   
                   
                    
                  
                  Telephone no:
                    <input type="email" id="email" name="tel"/>                <!-- Valid input types: http://www.w3schools.com/html5/html5_form_input_types.asp -->
                    
                    
                   
                 
                  
                      <input type="submit" value="Submit" onclick="myfunc('username','pwd','rpwd','fname','lname','dob','email','sques','sanw')"/>

</div>
</div>
</form>


</body>
</body>
</html>

 