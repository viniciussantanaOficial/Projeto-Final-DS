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
public class ProdutoBean {
    
    private int id_produto;
    private int categoria;
    private String nome;
    private byte[] imagem;
    private String imagemBase64;
    private Float valor;

    public ProdutoBean() {
    }

    public ProdutoBean(int id_produto, int categoria, String nome, byte[] imagem, String imagemBase64, Float valor) {
        this.id_produto = id_produto;
        this.categoria = categoria;
        this.nome = nome;
        this.imagem = imagem;
        this.imagemBase64 = imagemBase64;
        this.valor = valor;
    }

    public int getId_produto() {
        return id_produto;
    }

    public void setId_produto(int id_produto) {
        this.id_produto = id_produto;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public byte[] getImagem() {
        return imagem;
    }

    public void setImagem(byte[] imagem) {
        this.imagem = imagem;
    }

    public String getImagemBase64() {
        return imagemBase64;
    }

    public void setImagemBase64(String imagemBase64) {
        this.imagemBase64 = imagemBase64;
    }

    public Float getValor() {
        return valor;
    }

    public void setValor(Float valor) {
        this.valor = valor;
    }
    
    
    
}
