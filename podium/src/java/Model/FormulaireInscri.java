/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Adherent;
import Entity.Discipline;
import Entity.Paiement;
import java.util.List;

/**
 *
 * @author Hamza Ga
 */

public class FormulaireInscri {
    
    private Adherent a;
    private List d;
    private Paiement p;
    private Discipline dispchoix;
    private Discipline dispchoix2;
    private Discipline dispchoix3;


    public Discipline getDispchoix2() {
        return dispchoix2;
    }

    public void setDispchoix2(Discipline dispchoix2) {
        this.dispchoix2 = dispchoix2;
    }

    public Discipline getDispchoix3() {
        return dispchoix3;
    }

    public void setDispchoix3(Discipline dispchoix3) {
        this.dispchoix3 = dispchoix3;
    }

    
    public Discipline getDispchoix() {
        return dispchoix;
    }

    public void setDispchoix(Discipline dispchoix) {
        this.dispchoix = dispchoix;
    }

    public Adherent getA() {
        return a;
    }

    public void setA(Adherent a) {
        this.a = a;
    }

    public List getD() {
        return d;
    }

    public void setD(List d) {
        this.d = d;
    }

    public Paiement getP() {
        return p;
    }

    public void setP(Paiement p) {
        this.p = p;
    }
    
    
}
