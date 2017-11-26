/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author gkgkj
 */
@Controller

public class Accueil {
    
    @RequestMapping(value = "/accueil.htm", method = RequestMethod.GET)
    public ModelAndView accueil () {
        
     
        return new ModelAndView("Accueil");
    }  
}
