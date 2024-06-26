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
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.Part;
import modoBean.ProdutoBean;
import modoBean.UsuarioBean;

/**
 *
 * @author Senai
 */
public class ProdutoDao {
    
    
    public ProdutoBean readById(int id){
        ProdutoBean p = new ProdutoBean();
        
        try{
            Connection conexao = Conexao.getConn();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            stmt = conexao.prepareStatement("SELECT * FROM produtos where id_produto = ?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            
            if (rs.next()) {
                p.setId_produto(rs.getInt("id_produto"));
                p.setNome(rs.getString("nome"));
                p.setValor(rs.getFloat("valor"));
                p.setCategoria(rs.getInt("categoria_id"));
                Blob imagemBlob = rs.getBlob("imagem");
                if (imagemBlob != null) {
                    byte[] imagemBytes = imagemBlob.getBytes(1, (int) imagemBlob.length());
                    p.setImagem(imagemBytes);
                }                

            }
            rs.close();
            stmt.close();
            conexao.close();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }
    
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
                p.setNome(rs.getString("nome"));
                p.setValor(rs.getFloat("valor"));
                p.setCategoria(rs.getInt("categoria_id"));
                Blob imagemBlob = rs.getBlob("imagem");
                if (imagemBlob != null) {
                    byte[] imagemBytes = imagemBlob.getBytes(1, (int) imagemBlob.length());
                    p.setImagem(imagemBytes);
                }                
                produtos.add(p);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produtos;
    }
    
    public ProdutoBean lerproduto(int id){
        ProdutoBean p = new ProdutoBean();
        
        try{
            Connection conexao = Conexao.getConn();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            stmt = conexao.prepareStatement("SELECT * FROM produtos WHERE id_produto = ?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            
            if (rs.next()) {

                p.setId_produto(rs.getInt("id_produto"));
                p.setNome(rs.getString("nome"));
                p.setValor(rs.getFloat("valor"));
                p.setCategoria(rs.getInt("categoria_id"));
                Blob imagemBlob = rs.getBlob("imagem");
                if (imagemBlob != null) {
                    byte[] imagemBytes = imagemBlob.getBytes(1, (int) imagemBlob.length());
                    p.setImagem(imagemBytes);
                }                
                
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }
    public void deletar(ProdutoBean deletar){
        try{
            
           Connection conexao = Conexao.getConn();
            PreparedStatement stmt = null; 
            
      
         stmt = conexao.prepareStatement("delete from produtos where id_produto = ?");
           
         UsuarioBean usuario = new UsuarioBean();
         stmt.setInt(1,deletar.getId_produto());
    
 
   
            stmt.executeUpdate();
            stmt.close();
            conexao.close();
            
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
    

