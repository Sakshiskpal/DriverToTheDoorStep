
<%@page import="java.sql.Connection,java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
    String id=request.getParameter("uId");
    String pass=request.getParameter("uPass");
    String cat=request.getParameter("cat"); 
    if(cat.equals("Admin"))
    {
    PreparedStatement st = con.prepareStatement("select * from admin where adminID=? and password=?");
	st.setString(1,id);
	st.setString(2,pass);
	ResultSet rs=st.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("adminpanel.jsp");
        }
        else
        {
            out.println("Invalid id/password");
        }
    }
    if(cat.equals("Driver"))
    {
    PreparedStatement st1 = con.prepareStatement("select * from driver where driverID=? and password=?");
	st1.setString(1,id);
	st1.setString(2,pass);
	ResultSet rs=st1.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("driverpage.jsp");
        }
        else
        {
            out.println("Invalid id/password");
        }
    }
    if(cat.equals("Operator"))
    {
    PreparedStatement st2 = con.prepareStatement("select * from operator where operID=? and password=?");
	st2.setString(1,id);
	st2.setString(2,pass);
	ResultSet rs=st2.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("operatorpage.jsp");
        }
        else
        {
            out.println("Invalid id/password");
        }
    }
    if(cat.equals("User"))
    {
    PreparedStatement st3 = con.prepareStatement("select * from user where userID=? and password=?");
	st3.setString(1,id);
	st3.setString(2,pass);
	ResultSet rs=st3.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("userpage.jsp");
        }
    
        else
        {
            out.println("Invalid id/password");
        }
    }
    
    
//    PreparedStatement st = con.prepareStatement("select * from admin where adminID=? and password=?");
//	st.setString(1,id);
//	st.setString(2,pass);
//	ResultSet rs=st.executeQuery();
//        if(rs.next())
//        {
//            response.sendRedirect("welcome.jsp");
//        }
//        else
//        {
//            out.println("Invalid id/password");
//        }
%>