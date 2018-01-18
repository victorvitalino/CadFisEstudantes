/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edcarlos.controller;

import com.edcarlos.model.bean.Estudante;
import com.edcarlos.model.dao.EstudanteDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author adminn
 */
@WebServlet(name = "ControllerAlterarEstudante", urlPatterns = {"/ControllerAlterarEstudante"})
public class ControllerAlterarEstudante extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("AlteradoSucesso.jsp").include(request, response);
         request.getRequestDispatcher("AlteradoSucesso.jsp").forward(request, response);
       // response.setContentType("text/html;charset=UTF-8");
        //try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           // out.println("<!DOCTYPE html>");
            //out.println("<html>");
           // out.println("<head>");
           // out.println("<title>Servlet ControllerAlterarEstudante</title>");
          //  out.println("</head>");
          //  out.println("<body>");
           // out.println("<h1>Servlet ControllerAlterarEstudante at " + request.getContextPath() + "</h1>");
           // out.println("</body>");
           // out.println("</html>");
       // }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        Estudante estudante = new Estudante();
        EstudanteDao estudanteDao = new EstudanteDao();

        estudante = estudanteDao.consultarPorId(Integer.valueOf(request.getParameter("txtid")));
        estudante.setEstnome(request.getParameter("txtnome"));
        estudante.setEstsobrenome(request.getParameter("txtsobrenome"));
        //estudante.setEstsexo(request.getParameter("rdsexo"));
        estudante.setEstmassa(request.getParameter("txtmassa"));
        estudante.setEstaltura(request.getParameter("txtaltura"));

        estudanteDao.alterar(estudante);

        //JOptionPane.showMessageDialog(null, "ALTERAÇÃO FEITA COM SUCESSO!");
        
       
        //request.getRequestDispatcher("ListarEstudante.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
