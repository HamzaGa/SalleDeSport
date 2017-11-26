/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DAO.Classes.BO.AdherentBO;
import DAO.Classes.BO.PaiementBO;
import Entity.Paiement;
import Model.Encaissement;
import java.time.Year;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author gkgkj
 */
@Controller
public class Encaissements {
    
    
    @RequestMapping(value = "/annuels.htm", method = RequestMethod.GET)
    public ModelAndView annuels () {
        
        PaiementBO pb = new PaiementBO();
        AdherentBO ad = new AdherentBO();
        Encaissement enc = new Encaissement();
        List annees = new ArrayList();
        for (int i=Integer.valueOf(ad.getOldestYear()); i<=Year.now().getValue(); i++) annees.add(i);
        enc.setListe(annees);
        List <Paiement> listeEnc = new ArrayList();
        String year = Integer.toString(Year.now().getValue());
        listeEnc = pb.getByYear(year);
        List interm = new ArrayList();
        float total = 0;
        for (Paiement p : listeEnc) {
            interm.add(p);
            total = total + (Float.valueOf(p.getMontant()));
        }
        enc.setEncaissements(interm);
        enc.setAnnee(year);

        return new ModelAndView("EncaissementsAnnuels","enc",enc);
    }   
    
        @RequestMapping(value = "/annuelsForm.htm", method = RequestMethod.POST)
    public ModelAndView showFormEncaissements(@Valid @ModelAttribute("enc")Encaissement enc,BindingResult result, ModelMap model) {
        PaiementBO pb = new PaiementBO();
        AdherentBO ad = new AdherentBO();
        List annees = new ArrayList();
        for (int i=Integer.valueOf(ad.getOldestYear()); i<=Year.now().getValue(); i++) annees.add(i);
        enc.setListe(annees);
        List <Paiement> listeEnc = new ArrayList();
        String year = (enc.getAnnee());
        listeEnc = pb.getByYear(year);
        List interm = new ArrayList();
        float total = 0;
        for (Paiement p : listeEnc) {
            interm.add(p);
            total = total + (Float.valueOf(p.getMontant()));
        }
        enc.setEncaissements(interm);
        enc.setTotal(total);        
        
        return new ModelAndView("EncaissementsAnnuels","enc",enc);
    }
    
    
    @RequestMapping(value = "/mensuels.htm", method = RequestMethod.GET)
    public ModelAndView mensuels () {
        
        PaiementBO pb = new PaiementBO();
        AdherentBO ad = new AdherentBO();
        Encaissement enc = new Encaissement();
        List annees = new ArrayList();
        List <Paiement> listeEnc = new ArrayList();
        float total = 0;
        
        for (int i=Integer.valueOf(ad.getOldestYear()); i<=Year.now().getValue(); i++) {annees.add(i);};
        enc.setListe(annees);

        Date date = new Date();        
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        String month = Integer.toString((cal.get(Calendar.MONTH)+1));
        String year = Integer.toString(cal.get(Calendar.YEAR));

        listeEnc = pb.getByYearMonth(year,month);
        List interm = new ArrayList();
        for (Paiement p : listeEnc) {
            interm.add(p);
            total = total + (Float.valueOf(p.getMontant()));
        }
        enc.setEncaissements(interm);
        enc.setAnnee(year);
        enc.setMois(month);
        enc.setTotal(total);    
        return new ModelAndView("EncaissementsMensuels","enc",enc);
    }   
    
    @RequestMapping(value = "/mensuelsForm.htm", method = RequestMethod.POST)
    public ModelAndView showFormMensuels(@Valid @ModelAttribute("enc")Encaissement enc,BindingResult result, ModelMap model) {

        PaiementBO pb = new PaiementBO();
        AdherentBO ad = new AdherentBO();
        List annees = new ArrayList();
        List <Paiement> listeEnc = new ArrayList();
        float total = 0;
        
        for (int i=Integer.valueOf(ad.getOldestYear()); i<=Year.now().getValue(); i++) {annees.add(i);};
        enc.setListe(annees);

        String month = enc.getMois();
        String year = enc.getAnnee();
        
        listeEnc = pb.getByYearMonth(year,month);
        List interm = new ArrayList();
        for (Paiement p : listeEnc) {
            interm.add(p);
            total = total + (Float.valueOf(p.getMontant()));
        }
        enc.setEncaissements(interm);
        enc.setTotal(total);    
        return new ModelAndView("EncaissementsMensuels","enc",enc);
    }
    
    @RequestMapping(value = "/journaliers.htm", method = RequestMethod.GET)
    public ModelAndView journaliers () {
        
        PaiementBO pb = new PaiementBO();
        AdherentBO ad = new AdherentBO();
        Encaissement enc = new Encaissement();
        List annees = new ArrayList();
        List <Paiement> listeEnc = new ArrayList();
        float total = 0;
        
        for (int i=Integer.valueOf(ad.getOldestYear()); i<=Year.now().getValue(); i++) {annees.add(i);};
        enc.setListe(annees);

        Date date = new Date();        
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        String month = Integer.toString((cal.get(Calendar.MONTH)+1));
        String year = Integer.toString(cal.get(Calendar.YEAR));
        String day = Integer.toString(cal.get(Calendar.DAY_OF_MONTH));

        listeEnc = pb.getByYearMonthDay(year.concat("-").concat(month).concat("-").concat(day));
        List interm = new ArrayList();
        for (Paiement p : listeEnc) {
            interm.add(p);
            total = total + (Float.valueOf(p.getMontant()));
        }
        enc.setEncaissements(interm);
        enc.setAnnee(year);
        enc.setMois(month);
        enc.setJour(day);
        enc.setTotal(total);    
        return new ModelAndView("EncaissementsJournaliers","enc",enc);
    }   
    
    @RequestMapping(value = "/journaliersForm.htm", method = RequestMethod.POST)
    public ModelAndView showFormJournaliers(@Valid @ModelAttribute("enc")Encaissement enc,BindingResult result, ModelMap model) {

        PaiementBO pb = new PaiementBO();
        AdherentBO ad = new AdherentBO();
        List <Paiement> listeEnc = new ArrayList();
        float total = 0;        
   
        String date = String.valueOf(enc.getDate());
        listeEnc = pb.getByYearMonthDay(date);
        List interm = new ArrayList();
        for (Paiement p : listeEnc) {
            interm.add(p);
            total = total + (Float.valueOf(p.getMontant()));
        }
        enc.setEncaissements(interm);
        enc.setTotal(total);
        String [] dateParts = date.split("-");
        enc.setJour(dateParts[2]);
        enc.setMois(dateParts[1]);
        enc.setAnnee(dateParts[0]);
        
        return new ModelAndView("EncaissementsJournaliers","enc",enc);
    }
    
}
