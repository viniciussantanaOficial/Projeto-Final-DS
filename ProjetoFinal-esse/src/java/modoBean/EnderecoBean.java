/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modoBean;

/**
 *
 * @author vnici
 */
public class EnderecoBean {

    private int endereco;
    private UsuarioBean usuario_id;
    private String rua;
    private String numero;
    private int cep;
    private String bairro;
    private String cidade;
    private String estado;

    public EnderecoBean() {
    }

    public EnderecoBean(int endereco, UsuarioBean usuario_id, String rua, String numero, int cep, String bairro, String cidade, String estado) {
        this.endereco = endereco;
        this.usuario_id = usuario_id;
        this.rua = rua;
        this.numero = numero;
        this.cep = cep;
        this.bairro = bairro;
        this.cidade = cidade;
        this.estado = estado;
    }

    public int getEndereco() {
        return endereco;
    }

    public void setEndereco(int endereco) {
        this.endereco = endereco;
    }

    public UsuarioBean getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(UsuarioBean usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public int getCep() {
        return cep;
    }

    public void setCep(int cep) {
        this.cep = cep;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    

}
