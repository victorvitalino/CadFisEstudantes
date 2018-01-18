/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edcarlos.model.dao;

import com.edcarlos.model.bean.Estudante;
import com.edcarlos.model.connection.ConnectionFactory;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author adminn
 */
public class EstudanteDao {

    Session session;
    Transaction transaction;

    List<Estudante> listaEstudante = new ArrayList<Estudante>();

    public void salvar(Estudante estudante) {

        try {
            session = new ConnectionFactory().getSessionFactory();
            transaction = session.beginTransaction();
            session.save(estudante);
            transaction.commit();
            session.close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "" + e.getMessage());
            transaction.rollback();
            session.close();
        }
    }

    public void alterar(Estudante estudante) {
        try {
            session = new ConnectionFactory().getSessionFactory();
            transaction = session.beginTransaction();
            session.update(estudante);
            transaction.commit();
            session.close();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "" + e.getMessage());
            transaction.rollback();
            session.close();
        }

    }

    public Estudante consultarPorNome(String nome) {

        session = new ConnectionFactory().getSessionFactory();
        Query query = session.createSQLQuery("SELECT * FROM estudante WHERE estnome ='" + nome + "'").addEntity(Estudante.class);
        System.out.println("SELECT * FROM estudante WHERE estnome ='" + nome + "'");
        listaEstudante = query.list();

        return listaEstudante.get(0);
    }

    public List<Estudante> listar() {
        session = new ConnectionFactory().getSessionFactory();

        listaEstudante = session.createCriteria(Estudante.class).list();

        return listaEstudante;
    }
    
     public Estudante consultarPorId(int codigo){
        session = new ConnectionFactory().getSessionFactory();
        Query query = session.createSQLQuery("SELECT * FROM estudante WHERE estcodigo ='"+codigo+"'").addEntity(Estudante.class);
        listaEstudante = query.list();
        
        session.close();
        
        return listaEstudante.get(0);  
    }
     
     public List<Estudante> listarAproximado(String nome){
        session = new ConnectionFactory().getSessionFactory();
         Query query = session.createSQLQuery("SELECT * FROM estudante WHERE estnome like '%"+nome+"%'").addEntity(Estudante.class);
         listaEstudante = query.list();
         
         session.close();
         
         return listaEstudante;
                  
    }
     
       public void excluir(Estudante estudante){
        
        try{
            session = new ConnectionFactory().getSessionFactory();
            transaction = session.beginTransaction();
            session.delete(estudante);
            transaction.commit();
            session.close();
            
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, ""+e.getMessage());
            transaction.rollback();
            session.close();
        }
    }

}
