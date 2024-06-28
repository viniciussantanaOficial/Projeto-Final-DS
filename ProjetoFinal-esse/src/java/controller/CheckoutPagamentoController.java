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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modoBean.EnderecoBean;
import modoBean.ProdutoBean;
import modoDao.EnderecoDao;

/**
 *
 * @author vnici
 */
public class CheckoutPagamentoController extends HttpServlet {

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
        String url = getServletContext().getContextPath();
        if (url.equals("/checkoutPagamento")) {
            String nxt = "/WEB-INF/jsp/index.jsp";
            RequestDispatcher d = getServletContext().getRequestDispatcher(nxt);
            d.forward(request, response);
        }
        response.setContentType("text/html;charset=UTF-8");
        String nxt = "/WEB-INF/jsp/tela-checkout-pagamento.jsp";
        RequestDispatcher d = getServletContext().getRequestDispatcher(nxt);
        d.forward(request, response);
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
        String url = request.getServletPath();
        if (url.equals("/proxima-pagina")) {
            EnderecoBean enderecobean = new EnderecoBean();
            EnderecoDao enderecodao = new EnderecoDao();
            enderecobean.setRua(request.getParameter("rua"));
            enderecobean.setNumero(request.getParameter("numero"));
            int cep = Integer.parseInt(request.getParameter("cep"));
            enderecobean.setCep(cep);
            enderecobean.setEstado(request.getParameter("estado"));
            enderecobean.setCidade(request.getParameter("cidade"));
            enderecobean.setBairro(request.getParameter("bairro"));
            enderecodao.createCarrinho(enderecobean);
            response.sendRedirect("./home");
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
