<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">

    <link rel="stylesheet" href="style.css">
    <title>Inicio de sesion</title>
</head>
<body>
<img src="fondo5.jpg" id="fondo" alt="fondo de la pagina web">
    <header>
        <img src="logo.png" alt="" id="logo">
        <h1>SoloCiencia</h1>
    </header>
 <main>
        <form action="login.jsp" method="post" class="login">
            <h1 class="titulo">Login</h1>
            <br>
            <div>
                <label for="username">Usuario:</label>
                <input type="text" id="username" name="username" required><br>
            </div>
            <div>
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required><br>
            </div>
            <div class="error-message">
               <%String error = request.getParameter("error");
                  if (error != null) {
                      out.println("<p>"+"usario o contraseña no coinciden"+"</p>");
                                  }
               %>
            </div>
            <div>
                <input type="submit" value="Iniciar sesión">
            </div>
            <br>
            <p>No tienes una cuenta? <a href="Registro.html">Regístrate aquí</a></p>
        </form>
         
    </main>
   
   <footer>
        <div class="copyright">
            <p>Derechos reservados</p>
        </div>
        <div class="contenedor_redes">
            <ul class="redes_sociales" style="width: 15rem; margin-left: 25rem;">
                <!--Facebook-->
                <li>
                    <a href="#"><ion-icon name="logo-facebook"></ion-icon></a>
                </li>
                <!--Twitter-->
                <li>
                    <a href="#"><ion-icon name="logo-twitter"></ion-icon></a>
                </li>
                <!--Instagram-->
                <li>
                    <a href="#"><ion-icon name="logo-instagram"></ion-icon></a>
                </li>
            </ul>
        </div>
    </footer>
     <!--Para el uso de íconos en información de contacto-->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js" integrity="sha384-oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/uxy9rx7HNQlGYl1kPzQho1wx4JwY8wC"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js" integrity="sha384-oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/uxy9rx7HNQlGYl1kPzQho1wx4JwY8wC"></script>
</body>
</html>
