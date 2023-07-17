<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"  %>
    <%
    //conseguir datos
String username = request.getParameter("username");
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
int edad = Integer.parseInt(request.getParameter("edad"));
String password = request.getParameter("password");
//conxion base de datos
Class.forName("com.mysql.jdbc.Driver");
Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/semestral","root","");
Statement dbstatement = dbconect.createStatement();
//agregacion a la tabla
String insertarsql = "INSERT INTO usuarios (username, nombre, apellido, edad, password) VALUES ('" + username + "','"+ nombre + "', '" + apellido + "', " + edad + ", '" + password + "')";
dbstatement.executeUpdate(insertarsql);
//redirect hacia el login como dice las indicaciones
response.sendRedirect("pagina1.jsp");
 %>
