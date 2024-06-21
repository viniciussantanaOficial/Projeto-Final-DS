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
public class Projeto {
    private static int idProduto;

    public Projeto() {
    }

    public static int getIdProduto() {
        return idProduto;
    }

    public static void setIdProduto(int idProduto) {
        Projeto.idProduto = idProduto;
    }
    
    
}
