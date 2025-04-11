/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.miproyecto.servlets;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(filterName = "AuthFilter", urlPatterns = {"/paginas/*"})
public class AuthFilter implements Filter {
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Inicialización del filtro
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        
        HttpSession session = httpRequest.getSession(false);
        
        boolean isLoggedIn = (session != null && session.getAttribute("autenticado") != null && 
                             (Boolean) session.getAttribute("autenticado"));
        
        if (isLoggedIn) {
            // Usuario autenticado, permitir acceso
            chain.doFilter(request, response);
        } else {
            // Usuario no autenticado, redirigir a página de login
            httpRequest.setAttribute("mensaje", "Debe iniciar sesión para acceder a esta página");
            httpRequest.getRequestDispatcher("/acceso-denegado.jsp").forward(httpRequest, httpResponse);
        }
    }
    
    @Override
    public void destroy() {
        // Limpieza al destruir el filtro
    }
}
