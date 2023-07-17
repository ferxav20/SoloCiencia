<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>
        <%
        //se inicialisan las variables de resultSet que tendra el resultado de la query y la variable 
        // loggedIn que indica si lograste iniciar sesion o no
        Statement statement = null;
        ResultSet resultSet = null;
        boolean loggedIn = false;
        Connection Conn = null;
        // Obtener los valores enviados por el formulario
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //conexion base de datos
        Class.forName("com.mysql.jdbc.Driver");
        Conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/semestral","root","");
        statement = Conn.createStatement();
        // Validar el inicio de sesiÃ³n
        String query = "SELECT * FROM usuarios WHERE username='" + username + "' AND password='" + password + "'";
        resultSet = statement.executeQuery(query);
        loggedIn = resultSet.next();
        if (loggedIn) {
            response.sendRedirect("home.html");
          } else {
            response.sendRedirect("pagina1.jsp?error=credenciales incorrectas ");
          }
%>   