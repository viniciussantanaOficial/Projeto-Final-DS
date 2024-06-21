/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modoBean.ProdutoBean;
import modoBean.Projeto;
import modoDao.ProdutoDao;

/**
 *
 * @author Senai
 */
public class ProdutoUnicoController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProdutoDao dao = new ProdutoDao();
        
        ProdutoBean produtos = dao.lerproduto(Projeto.getIdProduto());
        System.out.println("Prdotuo: " + produtos);
        float total = 0;
        if (produtos.getImagem() != null) {
            String imagemBase64 = Base64.getEncoder().encodeToString(produtos.getImagem());
            produtos.setImagemBase64(imagemBase64);
        }

        request.setAttribute("produto", produtos);
        request.setAttribute("total", total);

        String perfil = "/WEB-INF/jsp/produtoUnico.jsp";
        RequestDispatcher pageP = getServletContext().getRequestDispatcher(perfil);

        pageP.forward(request, response);
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
        String url = request.getServletPath();
        if (url.equals("/produtoUnicoPagaa")) {
            Projeto.setIdProduto(Integer.parseInt(request.getParameter("idProduto")));
            response.sendRedirect("./produtoUnico");
        } else {
            processRequest(request, response);
        }

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
