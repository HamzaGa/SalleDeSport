/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.DAO;

import Entity.FactoryUtil;
import DAO.Interfaces.DAO.IPaiementDAO;
import Entity.Paiement;
import java.util.Date;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.Query;
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

    @Override
    public List<Paiement> getByNom(String nom) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      Query query = session.createQuery("from Paiement where discipline.nom=:nomDisp").setString("nomDisp",nom);
      List <Paiement> liste = query.list();
      for (Paiement p : liste) Hibernate.initialize(p.getDiscipline());
      for (Paiement p : liste) Hibernate.initialize(p.getAdherent());
      tx.commit();
      session.close();
      return liste;
    }

    @Override
    public Paiement getMostRecent(Long numInsc, String nomDisp) {
      System.out.println(numInsc + " LOOL " + nomDisp);
      factory = FactoryUtil.getSessionFactory();
      session = factory.openSession();  
      session.beginTransaction();
      Query q2=session.createQuery("select max(dateP) from Paiement where (adherent.numInsc=:i and discipline.nom=:nomDisp)");
      q2.setParameter("nomDisp",nomDisp);
      q2.setParameter("i",numInsc);
      Date d = (Date) q2.uniqueResult();
      Query q = session.createQuery("from Paiement where (adherent.numInsc=:i and discipline.nom=:nomDisp and dateP=:d)");
      q.setParameter("i",numInsc);
      q.setParameter("nomDisp", nomDisp);
      q.setParameter("d",d);
      //List<Adherent> adherents;
      Paiement p = (Paiement) q.uniqueResult();
      if (p!= null){
      Hibernate.initialize(p.getAdherent());
      Hibernate.initialize(p.getDiscipline());
      }
      session.getTransaction().commit();
      session.close();
      return p;  
    }

    @Override
    public List<Paiement> getByYear(String year) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      Query query = session.createQuery("from Paiement where date_p like :year");
      query.setParameter("year",year.concat("%"));
      List <Paiement> liste = query.list();
      for (Paiement p : liste) Hibernate.initialize(p.getDiscipline());
      for (Paiement p : liste) Hibernate.initialize(p.getAdherent());
      tx.commit();
      session.close();
      return liste;
    }

    @Override
    public List<Paiement> getByYearMonth(String year, String month) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      Query query = session.createQuery("from Paiement where date_p like :date");
      query.setParameter("date",year.concat("-").concat(month).concat("%"));
      List <Paiement> liste = query.list();
      for (Paiement p : liste) Hibernate.initialize(p.getDiscipline());
      for (Paiement p : liste) Hibernate.initialize(p.getAdherent());
      tx.commit();
      session.close();
      return liste;
    }

    @Override
    public List<Paiement> getByYearMonthDay(String date) {
      factory = f.getSessionFactory();
      session = factory.openSession();  
      tx = session.beginTransaction();
      Query query = session.createQuery("from Paiement where date_p like :date");
      query.setParameter("date",date.concat("%"));
      List <Paiement> liste = query.list();
      for (Paiement p : liste) Hibernate.initialize(p.getDiscipline());
      for (Paiement p : liste) Hibernate.initialize(p.getAdherent());
      tx.commit();
      session.close();
      return liste; 
    }
       
}
