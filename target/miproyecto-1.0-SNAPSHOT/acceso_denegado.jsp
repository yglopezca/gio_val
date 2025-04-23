<%-- 
    Document   : acceso_denegado
    Created on : 11 abr. 2025, 11:24:47
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Acceso Denegado</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            text-align: center;
        }
        .error {
            color: red;
            font-weight: bold;
            margin: 20px 0;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #0066cc;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a:hover {
            background-color: #004c99;
        }
    </style>
</head>
<body>
    <h1>Acceso Denegado</h1>
    
    <div class="error">
        <p>${mensaje != null ? mensaje : 'No tiene permisos para acceder a esta página'}</p>
    </div>
    
    <a href="login.html">Ir a la página de inicio de sesión</a>
</body>
</html>
