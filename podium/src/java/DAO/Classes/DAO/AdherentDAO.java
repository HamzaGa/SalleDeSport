/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.DAO;

//import static DAO.Classes.DisciplineDAO.getSessionFactory;
import Entity.FactoryUtil;
import DAO.Interfaces.DAO.IAdherentDAO;
import Entity.Adherent;
import Entity.Discipline;
import java.util.List;
import java.util.Set;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
//import org.hibernate.cfg.AnnotationConfiguration;

/**
 *
 * @author gkgkj
 */
public class AdherentDAO implements IAdherentDAO {

    private static SessionFactory factory; 
    Transaction tx = null;
    Session session;
    FactoryUtil f = new FactoryUtil();
    Query q;
    
    
    
    @Override
    public void save(Adherent adherent) {
      //récupere une session Factory
      factory = f.getSessionFactory();
      // ouvrir et fermer une session
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.save(adherent);
      tx.commit();
      session.close();
      //test
      System.out.println("Successfully created " + adherent.toString());       
}

    @Override
    public void update(Adherent adherent) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.update(adherent);
      tx.commit();
      session.close();
    }

    @Override
    public void delete(Adherent adherent) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      //Adherent ad = (Adherent) session.merge(adherent);
      session.delete(adherent);
      System.out.println("Deleted Successfully " + adherent.toString());
      tx.commit();
      session.close();
    }

    @Override
    public List<Adherent> get() {
      factory = FactoryUtil.getSessionFactory();
      session = factory.openSession();  
      session.beginTransaction();
            List<Adherent> adherents;
      q = session.createQuery("from Adherent");
      //q.setParameter("i",id);  
      adherents = q.list();
      for (Adherent a1 : adherents) Hibernate.initialize(a1.getDisciplines()); 
      session.getTransaction().commit();
      session.close();
      return adherents;
    }

    @Override
    public Adherent getById(long id) {
      factory = FactoryUtil.getSessionFactory();
      session = factory.openSession();  
      session.beginTransaction();
      q = session.createQuery("from Adherent where numInsc=:i");
      q.setParameter("i",id);
      //List<Adherent> adherents;
      Adherent a = (Adherent) q.uniqueResult();
      Hibernate.initialize(a.getDisciplines());
      session.getTransaction().commit();
      session.close();
      return a;     
    }
    
    
}
