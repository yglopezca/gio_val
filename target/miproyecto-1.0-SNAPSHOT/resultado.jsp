<%-- 
    Document   : resultado
    Created on : 11 abr. 2025, 11:20:30
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Resultado de Validación</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .menu {
            background-color: #f0f0f0;
            padding: 15px;
            border-radius: 5px;
            margin-top: 20px;
        }
        .menu ul {
            list-style-type: none;
            padding: 0;
        }
        .menu li {
            margin-bottom: 10px;
        }
        .menu a {
            text-decoration: none;
            color: #0066cc;
        }
        .menu a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>${mensaje}</h1>
   
    <%
        Boolean valido = (Boolean)request.getAttribute("esValido");
        if(valido != null && valido) {
    %>
        <p>Bienvenido, ${usuario}!</p>
        <p>Has iniciado sesión correctamente.</p>
        de todos los cargos de desarrollo en la cual se 
        <div class="menu">
            <h2>Menú de Opciones</h2>
            <ul>
                <li><a href="paginas/perfil.jsp">Ver Perfil</a></li>
                <li><a href="paginas/configuracion.jsp">Configuración</a></li>
                <li><a href="paginas/reportes.jsp">Reportes</a></li>
                <li><a href="paginas/administracion.jsp">Administración</a></li>
                <li><a href="CerrarSesion">Cerrar Sesión</a></li>
            </ul>
        </div>
        
    <% } else { %>
        <p>Usuario o contraseña incorrectos.</p>
        <a href="login.html">Volver a intentar</a>
    <% } %>
</body>
</html>