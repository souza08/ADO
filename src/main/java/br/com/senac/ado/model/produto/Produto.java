/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senac.ado.model.produto;

import br.com.senac.ado.model.categoria.Categoria;

/**
 *
 * @author Jonathan Souza
 */
public class Produto {

    
   private Integer id; 
   private Double vlProd;
   private String produto;
   private Categoria categoria;


    /**
     * @return the id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the vlProd
     */
    public Double getVlProd() {
        return vlProd;
    }

    /**
     * @param vlProd the vlProd to set
     */
    public void setVlProd(Double vlProd) {
        this.vlProd = vlProd;
    }

    /**
     * @return the produto
     */
    public String getProduto() {
        return produto;
    }

    /**
     * @param produto the produto to set
     */
    public void setProduto(String produto) {
        this.produto = produto;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    /**
     * @param categoria the categoria to set
     */
    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
   
}
