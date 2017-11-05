/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.DAO;

import Entity.FactoryUtil;
import DAO.Interfaces.DAO.IUserDAO;
import Entity.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author gkgkj
 */
public class UserDAO implements IUserDAO {

    private static SessionFactory factory; 
    Transaction tx = null;
    Session session;
    FactoryUtil f = new FactoryUtil();
    
    @Override
    public void save(User user) {
      //récupere une sessionFactory
      factory = f.getSessionFactory();
      //ouvrir et fermer une session
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.save(user);
      tx.commit();
      session.close();
      //test
      System.out.println("Successfully created " + user.toString()); 
    }

    @Override
    public void update(User user) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.update(user);
      tx.commit();
      session.close();
        
    }

    @Override
    public void delete(User user) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      session.delete(user);
      tx.commit();
      session.close(); 
    }
    
    public User select(User user){
     factory = f.getSessionFactory();
      session = factory.openSession();  
      Query q=session.createQuery("from User where login=:login and password=:password");
      q.setParameter("login", user.getLogin());
      q.setParameter("password", user.getPassword());
      user=(User)q.uniqueResult();
      tx = session.beginTransaction();
      tx.commit();
      session.close(); 
      return(user);
      
    }
    
}
