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
import modoBean.UsuarioBean;

/**
 *
 * @author Senai
 */
public class CarrinhoDao {

    public void createCarrinho(int id, int qtd) {
        try {
            Connection conexao = Conexao.getConn();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("insert into carrinho( id_usuario, id_produto, quantidade) values(?,?,?)");
            stmt.setInt(1, UsuarioBean.getId_usuarioStatic());
            stmt.setInt(2, id);
            stmt.setInt(3, qtd);
            stmt.executeUpdate();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void deleteCarrinho(int id) {
        try {
            Connection conexao = Conexao.getConn();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("delete from carrinho where id_produto = ?");
            stmt.setInt(1, id);

            stmt.executeUpdate();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public List<CarrinhoBean> LerCarrinho() {
        List<CarrinhoBean> carrinho = new ArrayList();

        try {
            Connection conexao = Conexao.getConn();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("select * from carrinho WHERE id_usuario = ?");
            stmt.setInt(1, UsuarioBean.getId_usuarioStatic());
            rs = stmt.executeQuery();

            while (rs.next()) {
                CarrinhoBean c = new CarrinhoBean();
                ProdutoBean p = new ProdutoBean();
                ProdutoDao pdao = new ProdutoDao();
                p = pdao.readById(rs.getInt("id_produto"));
                c.setId_carrinho(rs.getInt("id_carrinho"));
                c.setId_usuario(rs.getInt("id_usuario"));
                c.setQuantidade(rs.getInt("quantidade"));
                c.setId_produto(p);

                carrinho.add(c);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return carrinho;
    }

}
