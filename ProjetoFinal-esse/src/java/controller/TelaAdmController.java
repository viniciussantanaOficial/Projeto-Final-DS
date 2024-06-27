/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modoBean.ProdutoBean;
import modoDao.ProdutoDao;

/**
 *
 * @author Senai
 */
@MultipartConfig
public class TelaAdmController extends HttpServlet {
    ProdutoDao produtodao = new ProdutoDao();
    
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
        response.setContentType("text/html;charset=UTF-8");
       String url = "/WEB-INF/jsp/Painel_Adm.jsp";
       RequestDispatcher pageP = getServletContext().getRequestDispatcher(url);
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
        
        if(url.equals("/cadastrarProduto")) {
            ProdutoBean produtobean = new ProdutoBean();
            produtobean.setNome(request.getParameter("nome-produto"));
            produtobean.setCategoria(Integer.parseInt(request.getParameter("select-categoria")));
            produtobean.setValor(Float.parseFloat(request.getParameter("valor")));
            produtobean.setDescricao(request.getParameter("descricao"));
            produtobean = produtodao.adicionarImagem(produtobean, request.getPart("part"));
            
            produtodao.create(produtobean);
            response.sendRedirect("./telaadm");
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
