<%@page import="java.io.OutputStream"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%

 String ffn=request.getParameter("file");
// Blob file2=null;
 String data1=null,file2=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pri_multiKey","root","root");
Statement st=con.createStatement();

		 
    ResultSet rs = st.executeQuery("select * from files where name= '" + ffn + "' ");
   while(rs.next())
	{
	   file2=rs.getString("name");
	}
       System.out.println("file name is=..........."+file2);
		
   Blob b = (Blob)session.getAttribute("file1");

if(b!=null)
	{
	String filename =file2;
		
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("application/notepad");
			response.setHeader("Content-Disposition","attachment; filename=\""+filename+"\".txt");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			
			os.close();
			
	}


}
catch(Exception e)
{
	e.printStackTrace();
}

%>