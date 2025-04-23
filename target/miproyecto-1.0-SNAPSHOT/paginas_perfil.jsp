<%-- 
    Document   : paginas_perfil
    Created on : 11 abr. 2025, 11:25:27
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Perfil de Usuario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .profile {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 5px;
            margin-top: 20px;
        }
        .nav {
            margin-top: 20px;
        }
        .nav a {
            margin-right: 15px;
            text-decoration: none;
            color: #0066cc;
        }
    </style>
</head>
<body>
    <h1>Perfil de Usuario</h1>
    
    <div class="profile">
        <h2>Información de perfil</h2>
        <p><strong>Usuario:</strong> ${sessionScope.usuario}</p>
        <p><strong>Rol:</strong> Administrador</p>
        <p><strong>Último acceso:</strong> <%= new java.util.Date() %></p>
    </div>
    
    <div class="nav">
        <a href="../resultado.jsp">Volver al Menú</a>
        <a href="../CerrarSesion">Cerrar Sesión</a>
    </div>
</body>
</html>
