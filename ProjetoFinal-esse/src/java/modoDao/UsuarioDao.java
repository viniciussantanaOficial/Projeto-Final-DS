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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Senai
 */



public class UsuarioDao {
    public int logar(String usuario, String senha){
        int id = 0;
            
       try{
           Connection c = Conexao.getConn();
           PreparedStatement ps = c.prepareStatement("select * from usuarios where usuario = ? and senha = ?");
           ps.setString(1, usuario);
           ps.setString(2, senha);
           
           ResultSet rs = ps.executeQuery();
           if(rs.next()){
                id = rs.getInt("id_usuario");
                UsuarioBean.setAdmS(rs.getBoolean("adm"));
           
           }
               
               rs.close();
               ps.close();
               c.close();
               System.out.println("Login certo");
       }catch(SQLException e ){
           e.printStackTrace();
       } 
       return id;
    }
    
    public UsuarioBean pegarUsuarioId(int id){
        UsuarioBean u = new UsuarioBean();
        
        try{
            Connection c = Conexao.getConn();
           PreparedStatement ps = c.prepareStatement("select * from usuarios where id_usuario = ?");
           ps.setInt(1, id);
           
           ResultSet rs = ps.executeQuery();
           if(rs.next()){
           u.setId_usuario(rs.getInt("id_usuario"));
           u.setNome(rs.getString("nome"));
           u.setCpf(rs.getString("cpf"));
           u.setData_nascimento(rs.getDate("data_nascimento"));
           u.setEmail(rs.getString("email"));
           u.setTelefone(rs.getString("telefone"));
           u.setUsuario(rs.getString("usuario"));
           u.setAdm(rs.getString("adm"));
           
           }
           
        } catch(SQLException e ){
          e.printStackTrace();
       } 
        
        return u;
    }
    
    public boolean insertCliente(UsuarioBean usuario) {
        String senha = usuario.getSenha();

        
        try {
            String sql = "INSERT INTO usuarios (nome, senha, usuario, email, telefone, data_nascimento, cpf) VALUES (?, ?, ?, ?, ?, ?, ?)";
            Connection c = Conexao.getConn();
            PreparedStatement stmt = c.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getSenha());
            stmt.setString(3, usuario.getUsuario());
            stmt.setString(4, usuario.getEmail());
            stmt.setString(5, usuario.getTelefone());
            stmt.setDate(6, usuario.getData_nascimento()); 
            stmt.setString(7, usuario.getCpf()); 


            stmt.executeUpdate();
            
            stmt.close();
            c.close();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public List<UsuarioBean> getUsuarioById(int idUsuario) {

        List<UsuarioBean> usuarios = new ArrayList<>();
        try {
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;
            UsuarioBean usuario = null;
            conn = Conexao.getConn();
            String sql = "SELECT * FROM usuario WHERE id_usuario = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, idUsuario);
            rs = stmt.executeQuery();

            if (rs.next()) {
                usuario = new UsuarioBean();
                usuario.setId_usuario(rs.getInt("id_usuario"));
                usuario.setNome(rs.getString("nome"));
                usuarios.add(usuario);
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuarios;
    }
    
   
}
