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
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background-color: #121212;
            color: #fafafa;
            background: linear-gradient(135deg, #1a1a1a 0%, #0a0a0a 100%);
            animation: backgroundPulse 10s infinite;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        @keyframes backgroundPulse {
            0% { background-color: #121212; }
            50% { background-color: #181818; }
            100% { background-color: #121212; }
        }
        
        h1 {
            text-align: center;
            margin-bottom: 25px;
            font-size: 28px;
            font-weight: bold;
            background: linear-gradient(45deg, #f09433 0%, #e6683c 25%, #dc2743 50%, #cc2366 75%, #bc1888 100%);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: gradientShift 8s ease infinite;
            position: relative;
        }
        
        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
        
        h1::after {
            content: "";
            position: absolute;
            bottom: -8px;
            left: 50%;
            width: 0;
            height: 2px;
            background: linear-gradient(45deg, #f09433 0%, #e6683c 25%, #dc2743 50%, #cc2366 75%, #bc1888 100%);
            transition: width 0.3s ease, left 0.3s ease;
        }
        
        h1:hover::after {
            width: 80%;
            left: 10%;
        }
        
        p {
            text-align: center;
            margin: 15px 0;
            font-size: 16px;
            color: #e0e0e0;
            animation: fadeIn 0.5s ease forwards;
            opacity: 0;
            animation-delay: 0.3s;
        }
        
        @keyframes fadeIn {
            to { opacity: 1; transform: translateY(0); }
        }
        
        .menu {
            background-color: #1a1a1a;
            padding: 25px;
            border-radius: 8px;
            margin-top: 20px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.4);
            width: 80%;
            max-width: 500px;
            transition: all 0.5s cubic-bezier(0.25, 1, 0.5, 1);
            animation: floatIn 0.8s ease-out forwards;
            transform-style: preserve-3d;
            backface-visibility: hidden;
            opacity: 0;
            animation-delay: 0.5s;
        }
        
        @keyframes floatIn {
            0% {
                opacity: 0;
                transform: translateY(50px) rotateX(10deg);
            }
            100% {
                opacity: 1;
                transform: translateY(0) rotateX(0);
            }
        }
        
        .menu:hover {
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.5);
        }
        
        .menu h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #e0e0e0;
            font-size: 22px;
            position: relative;
            padding-bottom: 10px;
        }
        
        .menu h2::after {
            content: "";
            position: absolute;
            bottom: 0;
            left: 30%;
            width: 40%;
            height: 1px;
            background: linear-gradient(90deg, transparent, #833ab4, #e1306c, #fd1d1d, transparent);
        }
        
        .menu ul {
            list-style-type: none;
            padding: 0;
        }
        
        .menu li {
            margin-bottom: 15px;
            opacity: 0;
            transform: translateX(-20px);
            animation: slideRight 0.5s ease forwards;
        }
        
        .menu li:nth-child(1) { animation-delay: 0.7s; }
        .menu li:nth-child(2) { animation-delay: 0.8s; }
        .menu li:nth-child(3) { animation-delay: 0.9s; }
        .menu li:nth-child(4) { animation-delay: 1.0s; }
        .menu li:nth-child(5) { animation-delay: 1.1s; }
        
        @keyframes slideRight {
            to { opacity: 1; transform: translateX(0); }
        }
        
        .menu a {
            text-decoration: none;
            color: #8e8e8e;
            font-size: 16px;
            transition: all 0.3s ease;
            display: block;
            padding: 10px 15px;
            border-radius: 4px;
            background-color: #262626;
            position: relative;
            overflow: hidden;
        }
        
        .menu a::before {
            content: "";
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.1), transparent);
            transition: left 0.7s ease;
        }
        
        .menu a:hover {
            text-decoration: none;
            color: #ffffff;
            background: linear-gradient(90deg, #833ab4, #e1306c, #fd1d1d);
            box-shadow: 0 4px 12px rgba(0,0,0,0.3);
            transform: translateY(-2px);
        }
        
        .menu a:hover::before {
            left: 100%;
        }
        
        a:not(.menu a) {
            color: #e1306c;
            text-decoration: none;
            position: relative;
            transition: all 0.3s ease;
            padding: 5px 10px;
            border-radius: 4px;
            background-color: rgba(225, 48, 108, 0.1);
            animation: fadeIn 0.5s ease forwards;
            opacity: 0;
            animation-delay: 0.6s;
        }
        
        a:not(.menu a):hover {
            background-color: rgba(225, 48, 108, 0.2);
            text-decoration: underline;
        }
        
        a:not(.menu a)::before {
            content: "";
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 1px;
            background-color: #e1306c;
            transition: width 0.3s ease;
        }
        
        a:not(.menu a):hover::before {
            width: 100%;
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