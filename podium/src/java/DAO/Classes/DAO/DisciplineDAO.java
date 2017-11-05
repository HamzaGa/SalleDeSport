/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.DAO;

import Entity.FactoryUtil;
import DAO.Interfaces.DAO.IDisciplineDAO;
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
//import static org.hsqldb.DatabaseManager.getSession;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.hibernate.cfg.Configuration;

/**
 *
 * @author Hamza Ga
 */
public class DisciplineDAO implements IDisciplineDAO{

   Transaction tx = null;
   Session session;
   private static SessionFactory factory; 
   FactoryUtil f = new FactoryUtil();
   Query q;

   
@Override
    public void save(Discipline discipline) {
      //récupere une session Factory
      factory = f.getSessionFactory();
      // ouvrir et fermer une session
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.save(discipline);
      tx.commit();
      session.close();
      //test
      System.out.println("Successfully created " + discipline.toString());
    }

    @Override
    public void update(Discipline discipline) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.update(discipline);
      tx.commit();
      session.close();
    }

    @Override
    public void delete(Discipline discipline) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.delete(discipline);
      tx.commit();
      session.close();
    }

    @Override
    public List select() 
    {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      Query query = session.createQuery("from Discipline");
      List list = query.list();
      tx.commit();
      session.close();
      return list;
    }

    @Override
    public Discipline getById(int id) {
      factory = FactoryUtil.getSessionFactory();
      session = factory.openSession();  
      session.beginTransaction();
      q = session.createQuery("from Discipline where id=:i");
      q.setParameter("i",id);
      //List<Adherent> adherents;
      Discipline d = (Discipline) q.uniqueResult();
      session.getTransaction().commit();
      session.close();
      return d; 
        
    }

    
}
