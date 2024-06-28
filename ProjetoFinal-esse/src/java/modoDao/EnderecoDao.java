/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modoDao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modoBean.EnderecoBean;

/**
 *
 * @author vnici
 */
public class EnderecoDao {

    public void createCarrinho(EnderecoBean endereco) {
        Connection conexao = Conexao.getConn();
        PreparedStatement stmt = null;
        try {

            stmt = conexao.prepareStatement("INSERT INTO enderecos (rua, numero, cep, bairro, estado, cidade) VALUES (?, ?, ?, ?, ?, ?)");
            Connection c = Conexao.getConn();

            stmt.setString(1, endereco.getRua());
            stmt.setString(2, endereco.getNumero());
            stmt.setInt(3, endereco.getCep());
            stmt.setString(4, endereco.getBairro());
            stmt.setString(5, endereco.getEstado());
            stmt.setString(6, endereco.getCidade());

            stmt.executeUpdate();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
