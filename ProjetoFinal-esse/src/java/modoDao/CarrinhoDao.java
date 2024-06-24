/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modoDao;

import conexao.Conexao;
import java.sql.Blob;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modoBean.CarrinhoBean;
import modoBean.ProdutoBean;

/**
 *
 * @author Senai
 */
public class CarrinhoDao {

    public void CreateCarrinho(CarrinhoBean carrinho) {

        try {

            Connection conexao = Conexao.getConn();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("insert into carrinho(id_carrinho, id_usuario, categoria) values(?,?,?)");
            stmt.setInt(1, carrinho.getId_carrinho());
            stmt.setInt(1, carrinho.getId_usuario());
            stmt.setInt(1, carrinho.getQuantidade());

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    
    public List<CarrinhoBean> LerCarrinho(){
        List<CarrinhoBean> carrinho = new ArrayList();
        
        try{
            Connection conexao = Conexao.getConn();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            stmt = conexao.prepareStatement("select * from carrinho(id_carrinho, id_usuario, quantidade) vlaues(?,?,?");
            rs = stmt.executeQuery();
            
            while (rs.next()) {
                CarrinhoBean c = new CarrinhoBean();
               c.setId_carrinho(rs.getInt("id_carrinho"));
                c.setId_usuario(rs.getInt("id_usuario"));
                 c.setQuantidade(rs.getInt("quantidade"));
                
                      
                carrinho.add(c);
            }
        
     }catch (SQLException e) {
            e.printStackTrace();
        }
        return carrinho;
    }
    
}
