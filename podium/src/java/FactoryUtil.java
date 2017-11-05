/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import Entity.Discipline;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 *
 * @author gkgkj
 */
public class FactoryUtil {
    
    private static SessionFactory factory; 

    public static SessionFactory getSessionFactory() {
        try {
            factory = new AnnotationConfiguration().configure().addAnnotatedClass(Discipline.class).buildSessionFactory();
        } catch (HibernateException ex) { 
         System.err.println("Failed to create sessionFactory object." + ex);
         throw new ExceptionInInitializerError(ex); 
        }
        return factory;
    }
}
