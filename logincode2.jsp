<%@page import="java.sql.Connection,java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    
    String id=request.getParameter("uId");
    String name=request.getParameter("uName");
    String pass=request.getParameter("uPass");
    String dob=request.getParameter("uDob");
    String gender=request.getParameter("uGen");
    String contact=request.getParameter("uCon");
    String address=request.getParameter("uAdd");
    String city=request.getParameter("uCity");
    String pincode=request.getParameter("uPin");
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
PreparedStatement st = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?)");
	st.setString(1,id);
	st.setString(2,name);
        st.setString(3,pass);
        st.setString(4,dob);
        st.setString(5,gender);
        st.setString(6,contact);
        st.setString(7,address);
        st.setString(8,city);
        st.setString(9,pincode);
       
       st.executeUpdate();
        con.close();
            response.sendRedirect("homepage.jsp");
   %>