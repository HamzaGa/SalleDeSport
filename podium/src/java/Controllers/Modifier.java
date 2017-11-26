package Controllers;


import DAO.Classes.BO.AdherentBO;
import DAO.Classes.BO.DisciplineBO;
import Entity.Adherent;
import Entity.Discipline;
import Model.FormulaireInscri;
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author gkgkj
 */
@Controller
public class Modifier {
    
    @RequestMapping(value = "/Modifier.htm", method = RequestMethod.POST, params="modifier")
    public ModelAndView modifier(@Valid @ModelAttribute("f")FormulaireInscri f, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return new ModelAndView("InscriptionEchoue");
        }
        Adherent ad = f.getA();
        AdherentBO adb = new AdherentBO();
        DisciplineBO db = new DisciplineBO();
        Set<Discipline> set=new HashSet();
        if(f.getDispchoix()!=null){
            if(f.getDispchoix().getId()!=0){
                set.add(f.getDispchoix());
                f.setDispchoix(db.getById(f.getDispchoix().getId()));
            }
        else f.setDispchoix3(null);
        }
        if(f.getDispchoix2()!=null){
            if(f.getDispchoix2().getId()!=0) {
                set.add(f.getDispchoix2());
                f.setDispchoix2(db.getById(f.getDispchoix2().getId()));
            }
            else f.setDispchoix3(null);
        }
        if(f.getDispchoix3()!=null){
            if(f.getDispchoix3().getId()!=0) {
                set.add(f.getDispchoix3()); 
                f.setDispchoix3(db.getById(f.getDispchoix3().getId()));
            }
            else f.setDispchoix3(null);
        }
        
        ad.setDisciplines(set);
        adb.update(ad);
        System.out.println("UPDATEDDDDD");
        return new ModelAndView("FormulaireApercu","f",f);
}
   @RequestMapping(value = "/Modifier.htm", method = RequestMethod.POST, params="supprimer")
    public ModelAndView supprimer(@Valid @ModelAttribute("f")FormulaireInscri f, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return new ModelAndView("InscriptionEchoue");
        }
        Adherent ad = f.getA();
        AdherentBO adb = new AdherentBO();
        Set<Discipline> set=new HashSet();
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
        Adherent ad1 = ad;
        adb.delete(ad);
        System.out.println("suppression faite");
        return new ModelAndView("SuppressionValide","adherent",ad1);
    }
    
    @RequestMapping(value = "/Modifier.htm", method = RequestMethod.POST, params="supprimerDisp1")
    public ModelAndView supp1(@Valid @ModelAttribute("f")FormulaireInscri f, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return new ModelAndView("InscriptionEchoue");
        }
        Adherent ad = f.getA();
        AdherentBO adb = new AdherentBO();
        DisciplineBO db = new DisciplineBO();

        Set<Discipline> set = new HashSet();
        if(f.getDispchoix()!=null)
            if(f.getDispchoix().getId()!=0)
                System.out.println("----Test---- DISPCHOIX 1 -- Non ajouté = " + f.getDispchoix().getId());
        if(f.getDispchoix2()!=null)
            if(f.getDispchoix2().getId()!=0)
                set.add(f.getDispchoix2());
        if(f.getDispchoix3()!=null)
            if(f.getDispchoix3().getId()!=0)
                set.add(f.getDispchoix3());
        ad.setDisciplines(set);
        adb.update(ad);
        f.setA(ad);

        switch (set.size())
        {
            case 1: 
                f.setDispchoix(db.getById(f.getDispchoix2().getId()));
                f.setDispchoix2(null);
                f.setDispchoix3(null);
                break;
            case 2: 
                f.setDispchoix(db.getById(f.getDispchoix2().getId()));
                f.setDispchoix2(db.getById(f.getDispchoix3().getId()));
                f.setDispchoix3(null);
                break;
        }
        //set attribute D in f
        f.setD(db.select());
        
        return new ModelAndView("FormulaireApercu","f",f);
    }
    
    @RequestMapping(value = "/Modifier.htm", method = RequestMethod.POST, params="supprimerDisp2")
    public ModelAndView supp2(@Valid @ModelAttribute("f")FormulaireInscri f, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return new ModelAndView("InscriptionEchoue");
        }
        Adherent ad = f.getA();
        AdherentBO adb = new AdherentBO();
        DisciplineBO db = new DisciplineBO();

        Set<Discipline> set = new HashSet();
        if(f.getDispchoix()!=null)
            if(f.getDispchoix().getId()!=0)
                set.add(f.getDispchoix());
        if(f.getDispchoix2()!=null)
            if(f.getDispchoix2().getId()!=0)
        if(f.getDispchoix3()!=null)
            if(f.getDispchoix3().getId()!=0)
                set.add(f.getDispchoix3());
        ad.setDisciplines(set);
        adb.update(ad);
        f.setA(ad);
        switch (set.size())
        {
            case 1: 
                f.setDispchoix(db.getById(f.getDispchoix().getId()));
                f.setDispchoix2(null);
                f.setDispchoix3(null);
                break;
            case 2: 
                f.setDispchoix(db.getById(f.getDispchoix().getId()));
                f.setDispchoix2(db.getById(f.getDispchoix3().getId()));
                f.setDispchoix3(null);
                break;
        }
        //set attribute D in f
        f.setD(db.select());
        
        return new ModelAndView("FormulaireApercu","f",f);
    }
    
    @RequestMapping(value = "/Modifier.htm", method = RequestMethod.POST, params="supprimerDisp3")
    public ModelAndView supp3(@Valid @ModelAttribute("f")FormulaireInscri f, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return new ModelAndView("InscriptionEchoue");
        }
        Adherent ad = f.getA();
        AdherentBO adb = new AdherentBO();
        DisciplineBO db = new DisciplineBO();

        Set<Discipline> set = new HashSet();
        if(f.getDispchoix()!=null)
            if(f.getDispchoix().getId()!=0)
                set.add(f.getDispchoix());
        if(f.getDispchoix2()!=null)
            if(f.getDispchoix2().getId()!=0)
                set.add(f.getDispchoix2());
        if(f.getDispchoix3()!=null)
            if(f.getDispchoix3().getId()!=0)
                System.out.println("LOOOOOOOOOOOL");

        ad.setDisciplines(set);
        adb.update(ad);
        f.setA(ad);
        switch (set.size())
        {
            case 2: 
                f.setDispchoix(db.getById(f.getDispchoix().getId()));
                f.setDispchoix2(db.getById(f.getDispchoix2().getId()));
                f.setDispchoix3(null);
                break;
        }
        //set attribute D in f
        f.setD(db.select());
        
        return new ModelAndView("FormulaireApercu","f",f);
    }
    
}
