package com.prac4.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Verifica_usuario", urlPatterns = {"/Verifica_usuario"})
public class Verifica_usuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        if (usuario.equals("flipa") && clave.equals("1234")) {
            ses.setAttribute("usuario", usuario);
            request.getRequestDispatcher("principal.jsp").forward(request, response);
            //response.sendRedirect("principal.jsp");
        } else {

        }
    }
}
