/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Date;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modoBean.UsuarioBean;
import modoDao.UsuarioDao;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Senai
 */
public class CadastroController extends HttpServlet {

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
        String url = "/WEB-INF/jsp/Cadastro.jsp";
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

        String nextPage = "/WEB-INF/jsp/cadastro.jsp";
        String url = request.getServletPath();

        if (url.equals("/cadastrar-usuario")) {
            System.out.println("Cadstroooo");
            UsuarioDao usuariodao = new UsuarioDao();

            String errorMessage = "";
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");

            String dateString = request.getParameter("date");
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
            java.util.Date date = null;

            try {
                date = dateFormat.parse(dateString);
            } catch (ParseException e) {
                e.printStackTrace();
            }

            String cpf = request.getParameter("cpf");
            String passaword = request.getParameter("passaword");
            //se nome for nulo ou o nome sem espaço nao estiver vazio
            if (firstname.trim().isEmpty()
                    || lastname.trim().isEmpty()
                    || email.trim().isEmpty()
                    || phone.trim().isEmpty()
                    || date == null
                    || cpf.trim().isEmpty()
                    || passaword.trim().isEmpty()) {
                errorMessage = "Preencha todos os campos!";
            } else {
                phone = phone.replaceAll("[^0-9]", "");
                cpf = cpf.replaceAll("[^0-9]", "");

                UsuarioBean usuario = new UsuarioBean();
                usuario.setNome(firstname);
                usuario.setUsuario(lastname);
                usuario.setEmail(email);
                usuario.setTelefone(phone);
                // Converte java.util.Date para java.sql.Date
                java.sql.Date sqlDate = new java.sql.Date(date.getTime());
                usuario.setData_nascimento(sqlDate); // Define a data de nascimento no UsuarioBean
                usuario.setCpf(cpf);
                usuario.setSenha(passaword);

                if(usuariodao.insertCliente(usuario)){
                    response.sendRedirect(request.getContextPath() + "/login");
                } else {
                    response.sendRedirect(request.getContextPath() + "/cadastro");
                }

                System.out.println("Teste");
                nextPage = "/index.jsp";
            }
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
