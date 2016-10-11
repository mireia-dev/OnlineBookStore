/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import gestion.GestionLibros;

/**
 *
 * @author Antonio
 */
@WebServlet(name = "ServletAgregarTema", urlPatterns = {"/ServletAgregarTema"})
public class ServletAgregarTema extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        GestionLibros gestion=new GestionLibros();
        String tema=(String)request.getSession().getAttribute("tema");
        int idtema=(Integer)request.getSession().getAttribute("idtema");
        
        gestion.altaTema(tema,idtema);
        request.getRequestDispatcher("temaAgregado.jsp").forward(request, response);    
    }
}
