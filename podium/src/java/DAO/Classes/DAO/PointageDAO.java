/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.DAO;

import Entity.FactoryUtil;
import DAO.Interfaces.DAO.IPointageDAO;
import Entity.Pointage;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author gkgkj
 */
public class PointageDAO implements IPointageDAO {

    private static SessionFactory factory; 
    Transaction tx = null;
    Session session;
    FactoryUtil f = new FactoryUtil();
    
    @Override
    public void save(Pointage pointage) {
      //récupere une sessionFactory
      factory = f.getSessionFactory();
      //ouvrir et fermer une session
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.save(pointage);
      tx.commit();
      session.close();
      //test
      System.out.println("Successfully created " + pointage.toString());   
    }

    @Override
    public void update(Pointage pointage) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.update(pointage);
      tx.commit();
      session.close();
    }
    
    @Override
    public void delete(Pointage pointage) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.delete(pointage);
      tx.commit();
      session.close(); 
    }
    
}
