/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modoBean;

/**
 *
 * @author Senai
 */
public class CarrinhoBean {
    
    private int id_carrinho;
    private int id_usuario;
    private ProdutoBean id_produto;
    private int quantidade;

    public CarrinhoBean() {
    }

    public CarrinhoBean(int id_carrinho, int id_usuario, ProdutoBean id_produto, int quantidade) {
        this.id_carrinho = id_carrinho;
        this.id_usuario = id_usuario;
        this.id_produto = id_produto;
        this.quantidade = quantidade;
    }

    public int getId_carrinho() {
        return id_carrinho;
    }

    public void setId_carrinho(int id_carrinho) {
        this.id_carrinho = id_carrinho;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public ProdutoBean getId_produto() {
        return id_produto;
    }

    public void setId_produto(ProdutoBean id_produto) {
        this.id_produto = id_produto;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    
    
    
}
