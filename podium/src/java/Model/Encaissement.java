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
public class Encaissement {
    
    private List <Paiement> encaissements;
    private String annee;
    private String mois; 
    private String jour; 
    private List liste; //pour la liste déroulante choix année
    private float total; 
    private String date;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    public String getMois() {
        return mois;
    }

    public void setMois(String mois) {
        this.mois = mois;
    }

    public String getJour() {
        return jour;
    }

    public void setJour(String jour) {
        this.jour = jour;
    }    

    public float getTotal() {
        return total;
    }

    public void setTotal (float total) {
        this.total = total;
    }

    public List getListe() {
        return liste;
    }

    public void setListe(List liste) {
        this.liste = liste;
    }
    
    public List<Paiement> getEncaissements() {
        return encaissements;
    }

    public void setEncaissements(List<Paiement> encaissements) {
        this.encaissements = encaissements;
    }

    public String getAnnee() {
        return annee;
    }

    public void setAnnee(String annee) {
        this.annee = annee;
    }
    
    
}
