<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
//conseguir datos
    String nombre = request.getParameter("nombre");
    String cedula = request.getParameter("cedula");
    String fecha = request.getParameter("fecha");
    //conxion base de datos
Class.forName("com.mysql.jdbc.Driver");
Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/semestral","root","");
Statement dbstatement = dbconect.createStatement();
//agregacion a la tabla
String insertarsql = "INSERT INTO quibio (nombre, cedula, fecha) VALUES ('" + nombre + "', '" + cedula + "', '" + fecha +"')";
dbstatement.executeUpdate(insertarsql);
//redirect hacia el login como dice las indicaciones
response.sendRedirect("home.html");
 %>