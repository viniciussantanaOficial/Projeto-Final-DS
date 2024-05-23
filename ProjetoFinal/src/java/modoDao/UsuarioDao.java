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

/**
 *
 * @author Senai
 */
public class UsuarioDao {
    public boolean logar(String senha, String email){
        Connection c = Conexao.getConn();
       try{
           PreparedStatement ps = c.prepareStatement("select * from usuarios where usuario = ? and senha = ?");
           ps.setString(1, email);
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
    
}
