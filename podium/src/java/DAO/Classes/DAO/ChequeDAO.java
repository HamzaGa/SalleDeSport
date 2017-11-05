/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.DAO;

import Entity.FactoryUtil;
import DAO.Interfaces.DAO.IChequeDAO;
import Entity.Cheque;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author gkgkj
 */
public class ChequeDAO implements IChequeDAO {
    
    private static SessionFactory factory; 
    Transaction tx = null;
    Session session;
    FactoryUtil f = new FactoryUtil();
    
    @Override
    public void save(Cheque cheque) {
       //récupere une session Factory
      factory = f.getSessionFactory();
      // ouvrir et fermer une session
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.save(cheque);
      tx.commit();
      session.close();
      //test
      System.out.println("Successfully created " + cheque.toString());
    }

    @Override
    public void update(Cheque cheque) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.update(cheque);
      tx.commit();
      session.close();
    }

    @Override
    public void delete(Cheque cheque) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.delete(cheque);
      tx.commit();
      session.close();
    }
    
}
