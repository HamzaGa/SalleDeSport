/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.DAO;

import Entity.FactoryUtil;
import DAO.Interfaces.DAO.IPaiementDAO;
import Entity.Paiement;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author gkgkj
 */
public class PaiementDAO implements IPaiementDAO {

    private static SessionFactory factory; 
    Transaction tx = null;
    Session session;
    FactoryUtil f = new FactoryUtil();
    
    @Override
    public void save(Paiement paiement) {
      //récupere une sessionFactory
      factory = f.getSessionFactory();
      //ouvrir et fermer une session
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.save(paiement);
      tx.commit();
      session.close();
      //test
      System.out.println("Successfully created " + paiement.toString());
    }

    @Override
    public void update(Paiement paiement) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.update(paiement);
      tx.commit();
      session.close();
    }

    @Override
    public void delete(Paiement paiement) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.delete(paiement);
      tx.commit();
      session.close(); 
    }
    
    
}
