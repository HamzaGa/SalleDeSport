/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DAO.Classes.BO.AdherentBO;
import DAO.Classes.BO.DisciplineBO;
import Entity.Adherent;
import Entity.Discipline;
import Model.FormulaireInscri;
import Model.ListeAdherents;
import java.util.ArrayList;
import java.util.List;
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
 * @author gkgkj
 */
@Controller
public class FormApercu {
        @RequestMapping(value = "/formApercu.htm", method = RequestMethod.POST)
     public ModelAndView showFormPreview(@Valid @ModelAttribute("adherents")ListeAdherents la, 
      BindingResult result, ModelMap model) {
         
        if (result.hasErrors()) {
            System.out.println("shit");
            return new ModelAndView("error");
        }
         
        AdherentBO ab = new AdherentBO();
        Adherent a = ab.getById(la.getA().getNumInsc());
        
        
        FormulaireInscri f = new FormulaireInscri();
        f.setA(a);
        DisciplineBO db = new DisciplineBO();
        f.setD(db.select());

        Set <Discipline> disp = a.getDisciplines();
        List <Discipline> listeDisciplines = new ArrayList();
        
        for (Discipline d : disp) {
            listeDisciplines.add(d);
        }
        
        switch (listeDisciplines.size())
        {
            case 1: 
                f.setDispchoix(listeDisciplines.get(0));
                break;
            case 2: 
                f.setDispchoix(listeDisciplines.get(0)); 
                f.setDispchoix2(listeDisciplines.get(1)); 
                break;
            case 3: 
                f.setDispchoix(listeDisciplines.get(0)); 
                f.setDispchoix2(listeDisciplines.get(1)); 
                f.setDispchoix3(listeDisciplines.get(2)); 
                break;
        }
        //System.out.println("DISPCHOIX  = " + f.getDispchoix().getNom());
        //System.out.println("DISPCHOIX2 = " + f.getDispchoix2().getNom());
        //System.out.println("DISPCHOIX3 = " + f.getDispchoix3().getNom());
        return new ModelAndView("FormulaireApercu","f",f);
    }
}
