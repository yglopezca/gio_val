/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.miproyecto.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "ValidarUsuario", urlPatterns = {"/ValidarUsuario"})
public class ValidarUsuarioServlet extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener parámetros
        String user = request.getParameter("usuario");
        String pass = request.getParameter("clave");
       
        // Validar credenciales
        boolean esValido = false;
        String mensaje = "";
       
        if("admin".equals(user) && "1234".equals(pass)) {
            esValido = true;
            mensaje = "Inicio de Sesión Exitoso";
            
            // Crear sesión para el usuario autenticado
            HttpSession session = request.getSession();
            session.setAttribute("usuario", user);
            session.setAttribute("autenticado", true);
            
        } else {
            mensaje = "Inicio de Sesión Inválido";
        }
       
        // Agregar atributos al request
        request.setAttribute("esValido", esValido);
        request.setAttribute("mensaje", mensaje);
        request.setAttribute("usuario", user);
       
        // Redirigir a JSP
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}
