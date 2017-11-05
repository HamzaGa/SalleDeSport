package Controllers;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DAO.Classes.BO.AdherentBO;
import DAO.Classes.BO.DisciplineBO;
import Entity.Adherent;
import Entity.Discipline;
import Model.FormulaireInscri;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;
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
 * @author Hamza Ga
 */
@Controller
public class Inscription {
    
    @RequestMapping(value = "/Inscription.htm", method = RequestMethod.GET)
     public ModelAndView showForm() {
         FormulaireInscri f = new FormulaireInscri();
         f.setA(new Adherent());
         Discipline d = new Discipline();
         DisciplineBO db = new DisciplineBO();
         f.setD(db.select());
        
        return new ModelAndView("FormulaireInscri","f",f);
    }
    
    @RequestMapping(value = "/ValiderInscription.htm", method = RequestMethod.POST)
    public ModelAndView submit(@Valid @ModelAttribute("f")FormulaireInscri f, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return new ModelAndView("InscriptionEchoue");
        }
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        
        
        
        Adherent ad = f.getA();
        AdherentBO ab=new AdherentBO();
        ad.setDateInsc(String.valueOf(timestamp));
        Set set=new HashSet();
        
        if(f.getDispchoix()!=null)
            if(f.getDispchoix().getId()!=0)
                set.add(f.getDispchoix());
        if(f.getDispchoix2()!=null)
            if(f.getDispchoix2().getId()!=0)
                set.add(f.getDispchoix2());
        if(f.getDispchoix3()!=null)
            if(f.getDispchoix3().getId()!=0)
                set.add(f.getDispchoix3());
        
        ad.setDisciplines(set);
        ab.save(ad);
        
        
        return new ModelAndView("InscriptionValide","adherent",ad);
    }
}
