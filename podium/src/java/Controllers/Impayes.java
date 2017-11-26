/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DAO.Classes.BO.AdherentBO;
import DAO.Classes.BO.DisciplineBO;
import DAO.Classes.BO.PaiementBO;
import Entity.Adherent;
import Entity.Discipline;
import Entity.Paiement;
import Model.ListeImpayes;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.validation.Valid;
import org.joda.time.DateTime;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Impayes {
      @RequestMapping(value = "/impayes.htm", method = RequestMethod.GET)
    public ModelAndView showFormImpayes() {
        //int a =0;
        ListeImpayes li = new ListeImpayes();
        li.setB(0);
        return new ModelAndView("ListeImpayes","li",li);
    }
     
     @RequestMapping(value = "/ListeImpayes.htm", method = RequestMethod.POST)
    public ModelAndView submit(@Valid @ModelAttribute("impayes")ListeImpayes li, BindingResult result, ModelMap model) {
        
        if (result.hasErrors()) { return new ModelAndView("InscriptionEchoue"); }
        
        li.setB(1);
        String choix  = li.getChoixDisp();
        System.out.println(choix);

        DisciplineBO db = new DisciplineBO();
        List <Discipline> disps = (List <Discipline>)db.getByNom(choix);  
        
        AdherentBO adBO = new AdherentBO();
        List <Adherent> la = (List <Adherent>) adBO.get();
        
        List <Adherent> adisp = new ArrayList();
        
        for (Iterator <Adherent> iterator = la.iterator(); iterator.hasNext();) {
            Adherent a =  iterator.next();
            for (Iterator <Discipline> iterator2 = a.getDisciplines().iterator(); iterator2.hasNext();) {
                Discipline d = iterator2.next();
                if  ((d.getId()==(disps.get(0).getId()))||(d.getId()==(disps.get(1).getId()))||(d.getId()==(disps.get(2).getId()))||(d.getId()==(disps.get(3).getId()))){  
                    adisp.add(a);
                    break;
                }
            }
        }
        System.out.println("nombre de adhernets fel disp " + choix + " = " + adisp.size());
        for (Adherent a1 : adisp) System.out.println("ADHERENT FI " + choix + ": " + a1.getNumInsc());

        DateTime now = DateTime.now();
        //System.out.println(now);
        
        Date date = new Date();
        long diff;
        
        List liste = new ArrayList();
        
        PaiementBO pb = new PaiementBO();
        List <Paiement> lp = pb.getByNom(choix);
        Paiement pnew = new Paiement();
        
        //System.out.println("TEST ********* "  + pb.getMostRecent(b,choix).getId());
        
        for (Adherent a : adisp) {
            System.out.println("Une itération fi awel for (premier adherent: " + a.getNumInsc());
            //boolean imp = false;
            for (Paiement p : lp) {
                System.out.println("Une itération fi parcours paiements "  + p.getAdherent().getNumInsc() + " " + p.getDiscipline().getNom());
                if (p.getAdherent().getNumInsc().equals(a.getNumInsc())) {
                System.out.println("L9itou el adhérent hetha fi paiement fi " + choix + " " + a.getNumInsc());
                pnew = pb.getMostRecent(a.getNumInsc(),choix);
                System.out.println(pnew.getId());
                diff = ( (date.getTime() - pnew.getDateP().getTime()) / (24 * 60 * 60 * 1000) ) ;
                //System.out.println("diff = " + diff);
                switch (pnew.getNbrMois()) {
                    case 1 :
                        if (diff >= 31)  {
                            liste.add(pnew);
                            System.out.println ("one impaye added");
                            //imp = true;
                            break;
                        }break;
                    case 2 :
                        if (diff >= 61)  {
                            liste.add(pnew);
                            System.out.println ("one impaye added");
                            //imp = true;
                            break;
                        }break;
                    case 3 :
                        if (diff >= 91)  {
                            liste.add(pnew);
                            System.out.println ("one impaye added");
                            //imp = true;
                            break;
                        }break;
                    case 6 :
                        if (diff >= 182)  {
                            liste.add(pnew);
                            System.out.println ("one impaye added");
                            //imp = true;
                            break;
                        } break;
                    case 12 :
                        if (diff >= 365)  {
                            liste.add(pnew);
                            System.out.println ("one impaye added");
                            //imp = true;
                            break;
                        } break;
                    }
                break;
                }
            }
        }        
        li.setImpayes(liste);
        System.out.println(liste.size());
        return new ModelAndView("ListeImpayes","li",li);
    }
}
