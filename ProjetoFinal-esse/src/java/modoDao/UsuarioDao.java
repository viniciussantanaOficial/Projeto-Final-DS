/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modoDao;    

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modoBean.UsuarioBean;
import java.sql.Date;

/**
 *
 * @author Senai
 */



public class UsuarioDao {
    public boolean logar(String usuario, String senha){
        Connection c = Conexao.getConn();
       try{
           PreparedStatement ps = c.prepareStatement("select * from usuarios where usuario = ? and senha = ?");
           ps.setString(1, usuario);
           ps.setString(2, senha);
           
           ResultSet rs = ps.executeQuery();
           if(rs.next()){
               rs.close();
               ps.close();
               c.close();
               System.out.println("Login certo");
               return true;
           } else{
               rs.close();
               ps.close();
               c.close();
           }
       }catch(SQLException e ){
           e.printStackTrace();
       }    
        return false;
    }
    
    public boolean insertCliente(UsuarioBean usuario) {
        String senha = usuario.getSenha();
//        String hashedSenha = encoder.encode(senha);

        try {
            String sql = "INSERT INTO usuarios (nome, senha, usuario, email, telefone, data_nascimento, cpf) VALUES (?, ?, ?, ?, ?, ?, ?)";
            Connection c = Conexao.getConn();
            PreparedStatement stmt = c.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getSenha());
            stmt.setString(3, usuario.getUsuario());
            stmt.setString(4, usuario.getEmail());
            stmt.setString(5, usuario.getTelefone());
            stmt.setDate(6, usuario.getData_nascimento()); // Ajuste aqui
            stmt.setString(7, usuario.getCpf()); // E aqui


            stmt.executeUpdate();
            
            stmt.close();
            c.close();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
}
