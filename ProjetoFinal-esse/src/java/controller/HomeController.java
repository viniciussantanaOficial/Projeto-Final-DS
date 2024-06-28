/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Base64;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modoBean.ProdutoBean;
import modoBean.Projeto;
import modoBean.UsuarioBean;
import modoDao.ProdutoDao;
import modoDao.UsuarioDao;

/**
 *
 * @author Senai
 */
public class HomeController extends HttpServlet {

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

        String url = "/WEB-INF/jsp/home.jsp";
        request.setAttribute("id_usuario", UsuarioBean.getId_usuarioStatic());
        ProdutoDao dao = new ProdutoDao();
        List<ProdutoBean> produtos = dao.lertodos();
        float total = 0;

        if (UsuarioBean.isAdmS()) {
            UsuarioDao u = new UsuarioDao();
            List<UsuarioBean> usuarios = u.getUsuarioById(UsuarioBean.getId_usuarioStatic());
            request.setAttribute("adm", true);
        } else {
            request.setAttribute("adm", false);
        }
        
        for (ProdutoBean produto : produtos) {
            if (produto.getImagem() != null) {
                String imagemBase64 = Base64.getEncoder().encodeToString(produto.getImagem());
                produto.setImagemBase64(imagemBase64);
            }
        }
        
        
        request.setAttribute("produto", produtos);
        request.setAttribute("total", total);
        
        RequestDispatcher d = getServletContext().getRequestDispatcher(url);
        d.forward(request, response);
        
    }

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
        if(url.equals("/produtoUnicoPag")){
            Projeto.setIdProduto(Integer.parseInt(request.getParameter("idProduto")));
            response.sendRedirect("./produtoUnico");
        }else if(url.equals("sair")){
            System.out.println("    Re");
            UsuarioBean.setId_usuarioStatic(0);
            UsuarioBean.setAdmS(false);
            response.sendRedirect("./login");
        }else {
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
