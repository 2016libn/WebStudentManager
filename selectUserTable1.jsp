<%@ page  contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"  %>
<html>
<body>
<% 	Connection con;
		Statement sql;
		ResultSet rs;
		try{
			con=DriverManager.getConnection("jdbc:sqlserver:"+"//localhost:1433;DatabaseName=课表","sa","905841");
			sql=con.createStatement();
			rs=sql.executeQuery("select * from Course");
			out.print("<Table Border>");
			out.print("<TR><td colspan=8 align=center>课表信息</td></tr>");
			out.print("<TR>");
			out.print("<Td width=50>课程号</td>");
			out.print("<Td width=100>课程名</td>");
			out.print("<Td width=80>先修课程号</td>");
			out.print("<Td width=50>学分 </td>");
			out.print("<Td width=50>地点 </td>");
			out.print("<Td width=50>时间 </td>");
			out.print("</TR>");
			while(rs.next()){
						out.print("<TR>");
						out.print("<TD>"+rs.getString("Cno")+"</TD>");
						out.print("<TD>"+rs.getString("Cname")+"</TD>");	
						out.print("<TD>"+rs.getString("Cpno")+"</TD>");
						out.print("<TD>"+rs.getInt("Ccredit")+"</TD>");
						out.print("<TD>"+rs.getString("Caddress")+"</TD>");
						out.print("<TD>"+rs.getString("Cdate")+"</TD>");
			}
			out.print("<Table>");
			con.close();
		}catch(SQLException e1) {
					out.print(e1);
		}
%>
</body>
</html>