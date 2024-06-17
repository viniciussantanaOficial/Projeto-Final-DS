/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modoDao;

import conexao.Conexao;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.Part;
import modoBean.ProdutoBean;

/**
 *
 * @author Senai
 */
public class ProdutoDao {
    
    public void create(ProdutoBean produto){
        try{
            Connection conexao = Conexao.getConn();
            PreparedStatement stmt = null;
            
            stmt = conexao.prepareStatement("insert into produtos(categoria_id,nome,imagem,valor) values(?,?,?,?)");
            stmt.setInt(1, produto.getCategoria());
            stmt.setString(2, produto.getNome());
            stmt.setBytes(3, produto.getImagem());
            stmt.setFloat(4, produto.getValor());
            
            stmt.executeUpdate();
            stmt.close();
            conexao.close();
            
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    public ProdutoBean adicionarImagem(ProdutoBean produto,Part filePart) throws IOException{
        ProdutoBean p = produto;
        InputStream iStream = filePart.getInputStream();
        ByteArrayOutputStream byteA = new ByteArrayOutputStream();
        byte[] img = new byte[4096];
        int byteRead = -1;
        while((byteRead = iStream.read(img))!= -1){
            byteA.write(img, 0, byteRead);
        }
        byte[] imgBytes = byteA.toByteArray();
        p.setImagem(imgBytes);
        return p;
    }
    public List<ProdutoBean> lertodos(){
        List<ProdutoBean> produtos = new ArrayList();
        
        try{
            Connection conexao = Conexao.getConn();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            stmt = conexao.prepareStatement("SELECT * FROM produtos");
            rs = stmt.executeQuery();
            
            while (rs.next()) {
                ProdutoBean p = new ProdutoBean();
                p.setId_produto(rs.getInt("id_produto"));
                
                produtos.add(p);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produtos;
    }
}
