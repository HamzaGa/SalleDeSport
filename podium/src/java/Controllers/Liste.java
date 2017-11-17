/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DAO.Classes.BO.AdherentBO;
import Entity.Adherent;
import Entity.Discipline;
import Model.ListeAdherents;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author gkgkj
 */
@Controller
public class Liste {
    @RequestMapping(value = "/listeHom.htm", method = RequestMethod.GET)
     public ModelAndView listerHom() {
        
        AdherentBO ab = new AdherentBO();
        List <Adherent> adherents = ab.get();
        Set <Discipline> listeDisciplines;        
        List adherentsHom = new ArrayList();
        for (Adherent a : adherents) {
            listeDisciplines = a.getDisciplines();
                for (Discipline d : listeDisciplines) {
                    if ((d.getCategorie().equals("Hommes")))  {
                        adherentsHom.add(a);
                        break; 
                }
            }
        }
        
        ListeAdherents la = new ListeAdherents();
        la.setAdherents(adherentsHom);
        return new ModelAndView("ListeAdherents", "adherents", la);
    }
     
@RequestMapping(value = "/listeFem.htm", method = RequestMethod.GET)
    public ModelAndView listerFemme() {
        AdherentBO ab = new AdherentBO();
        List <Adherent> adherents = ab.get();
        Set <Discipline> listeDisciplines;
        
        List adherentsFem = new ArrayList();
        for (Adherent a : adherents) {
            listeDisciplines = a.getDisciplines();
            for (Discipline d : listeDisciplines) {
                if ((d.getCategorie().equals("Femmes")))  {
                    adherentsFem.add(a);
                    break; 
                }
            }
        }
        ListeAdherents la = new ListeAdherents();
        la.setAdherents(adherentsFem);
        return new ModelAndView("ListeAdherents", "adherents",la);
    }
    
    @RequestMapping(value = "/listeEnf.htm", method = RequestMethod.GET)
    public ModelAndView listerEnfants() {
        
        AdherentBO ab = new AdherentBO();
        List <Adherent> adherents = ab.get();
        Set <Discipline> listeDisciplines;
            
        List adherentsEnf = new ArrayList();
        for (Adherent a : adherents) {
            listeDisciplines = a.getDisciplines();
            for (Discipline d : listeDisciplines) {
                if ((d.getCategorie().equals("Enfants")))  {
                    adherentsEnf.add(a);
                    break; 
                    }
                }
            }
        ListeAdherents la = new ListeAdherents();
        la.setAdherents(adherentsEnf);
        return new ModelAndView("ListeAdherents", "adherents",la);
    }
       
    @RequestMapping(value = "/listeMix.htm", method = RequestMethod.GET)
    public ModelAndView listerMixte() {
        AdherentBO ab = new AdherentBO();
        List <Adherent> adherents = ab.get();
        Set <Discipline> listeDisciplines;
        List adherentsMix = new ArrayList();
        for (Adherent a : adherents) {
            listeDisciplines = a.getDisciplines();
            for (Discipline d : listeDisciplines) {
                if((d.getCategorie().equals("Mixte")))  {
                    adherentsMix.add(a);
                    break; 
                }
            }
        }
        ListeAdherents la = new ListeAdherents();
        la.setAdherents(adherentsMix);    
        return new ModelAndView("ListeAdherents", "adherents",la);
    }
}
