
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
  String state = request.getParameter("search");
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mobiles", "root", "");
  Statement st = con.createStatement();
  ResultSet rs = st.executeQuery("select * from mobiles where Model_Name IN(SELECT id FROM mobiles WHERE Model_Name='"+state+"')"); 

            if(!rs.next()) {
                out.println("SORRY,THE model_Name YOU TYPED IS NOT AVAILABLE IN OUR LIST");
            } else {
        %> 
        <%=("<center><font size='8'>"+Model_Name+"</font></center><br>")%>
      <br><br><br> 
      <br><br><br> 
      <br> 

         while(rs.next())
{

%>
    <tr><td><%out.println(rs.getInt("id")); %></td></tr>
    <tr><td><%out.println(rs.getString("Brand_Name")); %></td></tr>
    <tr><td><%out.println(rs.getString("Model_Name")); %></td></tr>
  <tr><td><%out.println(rs.getString("Network_Type")); %></td></tr>
  
  <tr><td><%out.println(rs.getString("Release_Date")); %></td></tr>
  <tr><td><%out.println(rs.getString("Display")); %></td></tr>
  <tr><td><%out.println(rs.getString("Body")); %></td></tr>
  <tr><td><%out.println(rs.getString("OS")); %></td></tr>
  <tr><td><%out.println(rs.getString("CPU")); %></td></tr>
  <tr><td><%out.println(rs.getString("GPU")); %></td></tr>
  <tr><td><%out.println(rs.getString("External_Memory")); %></td></tr>
  <tr><td><%out.println(rs.getString("ROM")); %></td></tr>
  <tr><td><%out.println(rs.getString("Primary_Camera")); %></td></tr>
  <tr><td><%out.println(rs.getString("Secondary_Camera")); %></td></tr>
  <tr><td><%out.println(rs.getString("RAM")); %></td></tr>
  <tr><td><%out.println(rs.getString("Battery")); %></td></tr>
  <tr><td><%out.println(rs.getString("Price")); %></td></tr>

   <%

}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</html>  
         