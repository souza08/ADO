/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senac.ado.servlet.produtos;

import br.com.senac.ado.db.dao.DaoCategoria;
import br.com.senac.ado.db.dao.DaoProduto;
import br.com.senac.ado.db.utils.ConnectionUtils;
import br.com.senac.ado.exceptions.DataSourceException;
import br.com.senac.ado.exceptions.ProdutoException;
import br.com.senac.ado.model.produto.Produto;
import br.com.senac.ado.services.produtos.ServicoProduto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Kelly
 */
@WebServlet(name = "PesquisarProduto", urlPatterns = {"/PesquisaProduto"})

public class PesquisarProduto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        DaoCategoria categoriaDao = new DaoCategoria(ConnectionUtils.getConnection());

        try {
            req.getSession().setAttribute("listaCategoria", categoriaDao.listarCategoria());
        } catch (SQLException ex) {
            Logger.getLogger(PesquisarProduto.class.getName()).log(Level.SEVERE, null, ex);
        }

        req.getRequestDispatcher("Produtos/listarProduto.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

               
        DaoProduto produtoDao = new DaoProduto(ConnectionUtils.getConnection());
                
        String produto = req.getParameter("pesquisaNome");
       
        
         List<Produto> listaProdutos = null;
        try {
           listaProdutos =  produtoDao.procurarProduto(produto);
           
        } catch (SQLException ex) {
            Logger.getLogger(ListarProduto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(PesquisarProduto.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        req.getSession().setAttribute("listaProdutos", listaProdutos);
        
        req.getRequestDispatcher("Produtos/listarProduto.jsp").forward(req, resp);
    }
}
