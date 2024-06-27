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
import modoBean.CarrinhoBean;
import modoBean.ProdutoBean;
import modoDao.CarrinhoDao;
import modoDao.ProdutoDao;

/**
 *
 * @author Senai
 */
public class CarrinhoController extends HttpServlet {

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
        CarrinhoDao dao = new CarrinhoDao();

        List<CarrinhoBean> carrinho = dao.LerCarrinho();
        for (CarrinhoBean produto : carrinho) {
            if (produto.getId_produto().getImagem() != null) {
                String imagemBase64 = Base64.getEncoder().encodeToString(produto.getId_produto().getImagem());
                produto.getId_produto().setImagemBase64(imagemBase64);
            }
        }
        request.setAttribute("produto", carrinho);

        String url = "/WEB-INF/jsp/carrinho.jsp";
        RequestDispatcher d = getServletContext().getRequestDispatcher(url);
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
        String url = request.getServletPath();
        
        
        if (url.equals("/deletar-carrinho")) {
            System.out.println("Delete");
            CarrinhoDao dao = new CarrinhoDao();
            int id = Integer.parseInt(request.getParameter("idProduto"));
            dao.deleteCarrinho(id);
            response.sendRedirect("./carrinho");
            
        }else if(url.equals("/proxima-pagina")){
            response.sendRedirect("./proxima-pagina");
        }
        else {
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
