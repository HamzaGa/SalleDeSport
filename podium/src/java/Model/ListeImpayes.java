/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Paiement;
import java.util.List;

/**
 *
 * @author gkgkj
 */
public class ListeImpayes{
    
    private int b;
    private Paiement paiement;
    private String choixDisp;
    private List <Paiement> impayes;

    public int getB() {
        return b;
    }

    public void setB(int b) {
        this.b = b;
    }

    
    public Paiement getPaiement() {
        return paiement;
    }

    public void setPaiement(Paiement paiement) {
        this.paiement = paiement;
    }

    public String getChoixDisp() {
        return choixDisp;
    }

    public void setChoixDisp(String choixDisp) {
        this.choixDisp = choixDisp;
    }
    
    public List<Paiement> getImpayes() {
        return impayes;
    }

    public void setImpayes(List<Paiement> listeImpayes) {
        this.impayes = listeImpayes;
    }
          
}
