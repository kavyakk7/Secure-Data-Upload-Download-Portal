<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Assured and Aggressive Multi-keyword Ranked Search Scheme in 
Shared Environment over Encrypted Data</title>
<meta name="keywords" content="VOIP Company, css template, free web design layout" />
<meta name="description" content="VOIP Company, css template, free web design layout from TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="tabcontent.css" />
<script type="text/javascript" src="tabcontent.js">
</script>
</head>
<body>
<%
java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "yyyy-MM-dd";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String str = sdf1.format(now);

     String ffn=request.getParameter("fname");
String ff=request.getParameter("file");

String a="D:\\tomcat\\webapps\\web\\file\\";
String fname1=a+ff;
FileInputStream fis=null;

Random r = new Random();
int ii = r.nextInt(10000000-500000)+500000;
String k = ii+"";
String l="1";
File image=new File(fname1);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pri_multiKey","root","root");

PreparedStatement ps=con.prepareStatement("insert into files(file,name,rank_,key_) values(?,?,?,?)");

ps.setString(2,ffn);
fis=new FileInputStream(image);
ps.setBinaryStream(1, (InputStream)fis, (int)(image.length()));
ps.setString(3,l);
ps.setString(4,k);



ps.executeUpdate();
response.sendRedirect("setkeyword.jsp?msg= sucess..!");
out.println("file is uploaded...");
session.setAttribute("fname",ffn);
session.setAttribute("nn", k);
}
catch(Exception e)
{
e.printStackTrace();
}
%>


<div id="templatemo_wrapper">
<div id="templatemo_container">
    <div id="templatemo_menu">
        <div id="pettabs" class="indentmenu">
            <ul>
                <li><a href="memberHome.jsp" rel="tab1" class="selected">Back</a></li>
                <li><a href="#" rel="tab3">Upload</a></li>
                  <li><a href="Home.jsp " rel="tab5">Sign Out</a></li>
            </ul>
        </div>
        <div class="tabcontentstyle">
        
            
            <div id="tab2" class="tabcontent">
            	<ul>
                  <li><a href="#">Service 1</a></li>
                  <li><a href="#">Service 2</a></li>
                  <li><a href="#">Service 3</a></li>
                  <li><a href="#">Service 4</a></li>
                  <li><a href="#">Service 5</a></li>
                </ul>
            </div>
            
            <div id="tab3" class="tabcontent">
            	<ul>
                  <li><a href="#">Product 1</a></li>
                  <li><a href="#">Product 2</a></li>
                  <li><a href="#">Product 3</a></li>
                  <li><a href="#">Product 4</a></li>
                </ul>
            </div>
            
            <div id="tab4" class="tabcontent">
            	<ul>
                  <li><a href="#">Link 1</a></li>
                  <li><a href="#">Link 2</a></li>
                  <li><a href="#">Link 3</a></li>
                  <li><a href="#">Link 4</a></li>
                  <li><a href="#">Link 5</a></li>
                  <li><a href="#">Link 6</a></li>
                </ul>
            </div>
            
            <div id="tab5" class="tabcontent">
            	Something you might want to know about us.
            </div>
            
            <div id="tab6" class="tabcontent">
            	Don't be hesitated to contact us if you have something to say.
            </div>
        
        </div>
<script type="text/javascript">
        
        var mypets=new ddtabcontent("pettabs")
        mypets.setpersist(true)
        mypets.setselectedClassTarget("link")
        mypets.init(false)   
</script>

    </div> <!-- end of mneu -->
   
    <div id="templatemo_banner">
    	<h1>Data Dynamic Groups in the Cloud
    
    </div>
    
	<div id="templatemo_content">
    	<div id="content_top"></div>
        
        <div class="templatemo_content_section_01">
            <div class="section_01_left" style="margin-left: 20px;">
                <!--<form name="" action="upload1.jsp" method="post" enctype="multipart/form-data">
                                <p style="font-size: 20px;">File Upload:</p>
                                <table width="70%">
								<tr><td>filename</td><td><input type="text" name="fname"></td></tr>
                                    <tr style="height: 40px;"><td>Choose File</td><td> <input name="file" type="file" id="file"/>    </td></tr>
                                    <tr style="height: 20px;width: 150px; "><td></td><td><input type="submit" value="Upload" style="height: 30px;width: 90px;"/></td></tr>
                                </table>
                            </form> -->
            </div> 
			
            
            
            <div class="cleaner">&nbsp;</div>
		</div>
        
       
        
        
    </div>
    
    <div id="templatemo_footer">
    
        	<p>Copyright � 2016 <a href=""><strong></strong></a> </p>
	</div> <!-- end of footer -->
	<!--  Free CSS Templates from www.TemplateMo.com  -->
</div>
</div>
</body>
</html>