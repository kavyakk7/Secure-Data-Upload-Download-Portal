<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.DbConnector"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Assured and Aggressive Multi-keyword Ranked Search Scheme in 
Shared Environment over Encrypted Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script>
    function check(){
        var a = document.ff.user.value;      
         if(a==0){
            alert('Please Enter The Keyword..!');
            return false;
            document.getElementById("user").focus();            
        }
    }
    
    
</script>
</head>
<body>
<div class="main">
  <div class="search">
   
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
  <div class="header">
    <div class="logo">
      <h1><a href="index.html"><span>Assured and Aggressive Multi-keyword Ranked Search Scheme in 
	  Shared Environment over Encrypted Data</span></a></h1>
    </div>
  
    <div class="clr"></div>
  </div>
  <div class="hbg"><img src="images/header_images.jpg" width="970" height="294" alt="" /></div>
  <div class="content">
    <div class="mainbar">
      <div class="article">
        <h2><span>Requesting Key for Data Service..!</span></h2>
        <div class="clr"></div>
       <%
           
           String my = session.getAttribute("me").toString();
       if(request.getParameter("msg")!=null){
       out.println("<script>alert('Welcome..!')</script>");
       }
       
       %>
       <img src="images/cloudsearch.jpg" width="613" height="193" alt="" />
     
                 
           Welcome: <font color="red"><%=my%></font><br></br>
            <fieldset>
           
           <%               
             String f = null;  
             String k = null;  
           String txt = request.getParameter("search");           
           Connection conn = DbConnector.getConnection();
           Statement st = conn.createStatement();
           //file, name, rank_, key_, title, keyword, cat
           ResultSet rst = st.executeQuery("select * from files where name='"+txt+"' or title='"+txt+"' or keyword='"+txt+"' or cat='"+txt+"' order by rank_ desc");
           while(rst.next()){
               f = rst.getString("name");        
               k = rst.getString("key_");        
           
        System.out.println(f+"\n");   
           %>
          
<!--           <p><%=f%></p>-->
               
               
            Click Here to Get Key:   <a href="userfileview.jsp?<%=k%>"> <%=f%></a><br>
           
           <% }%>
           </fieldset>
        
      </div>
    
     
    </div>
    <div class="sidebar">
      <div class="gadget">
        <h2><span>Sidebar</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
            <li class="active"><a href="userpage.jsp">Home</a></li>
            <li><a href="index.jsp">Logout</a></li>
           
        
        </ul>
      </div>
  
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
  <div class="fbg">
 

     
   
  
    <div class="clr"></div>
  </div>
  <div class="footer">
    <p class="lf">&copy; Copyright <a href=""></a>.</p>
  
    <div class="clr"></div>
  </div>
</div>
</body>
</html>