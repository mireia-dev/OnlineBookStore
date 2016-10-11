/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import entidades.Libro;
import entidades.Temas;
import java.util.List;
import javax.persistence.Query;

/**
 *
 * @author USUARIO
 */
public class GestionLibros {

    EntityManager em;

    public GestionLibros() {
        this.em = getEntityManager();
    }
    
    //método para crear el EntityManager
    private EntityManager getEntityManager(){
        EntityManagerFactory emf=Persistence.createEntityManagerFactory("LibreriaOnlinePU");
        EntityManager em=emf.createEntityManager();
        return em;
    }
    
    public void altaLibro(Libro lib){
        em.getTransaction().begin();
        em.persist(em);
        em.getTransaction().commit();   
    }
    
    public void altaTema(String tema, int idtema){
        em.getTransaction().begin();
        em.persist(em);
        em.getTransaction().commit();   
    }
    
    public List<Libro> listaLibros(){
        Query q=em.createNamedQuery("Libro.findAll");
        return (List<Libro>)q.getResultList();
    }
    
    public List<Temas> listaTemas(){
        Query q=em.createNamedQuery("Temas.findAll");
        return (List<Temas>)q.getResultList();
    }
    
    public List<Libro> buscarPorTema(String tema){
        Query q=em.createNamedQuery("Temas.findByTema");
        q.setParameter("tema", tema);
        return (List<Libro>)q.getResultList();
    } 
    
}
