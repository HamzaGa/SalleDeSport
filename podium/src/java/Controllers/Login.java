/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DAO.Classes.BO.UserBO;
import Entity.*;
import Model.FormulaireInscri;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
public class Login {
  
    @RequestMapping(value="/",method=RequestMethod.GET)
    public ModelAndView showView(){
        
        return(new ModelAndView("login","user",new User()));
    }
    
    
    @RequestMapping(value="/Login.htm",method=RequestMethod.POST)
    public ModelAndView verifLogin(@Valid @ModelAttribute("user")User user, BindingResult result, Model model){
        UserBO ub = new UserBO();
        if(ub.select(user)==null)
        return(new ModelAndView("login","user",new User()));
        else
            return(new ModelAndView("FormulaireInscri","f",new FormulaireInscri()));
    }
    
}
