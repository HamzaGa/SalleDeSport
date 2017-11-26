/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.BO;

import DAO.Classes.DAO.PaiementDAO;
import DAO.Interfaces.BO.IPaiementBO;
import DAO.Interfaces.DAO.IPaiementDAO;
import Entity.Paiement;
import java.util.List;

/**
 *
 * @author gkgkj
 */
public class PaiementBO implements IPaiementBO {

    IPaiementDAO paiementdao = new PaiementDAO();
    
    @Override
    public void save(Paiement paiement) {
        paiementdao.save(paiement);
    }

    @Override
    public void update(Paiement paiement) {
        paiementdao.update(paiement);
    }

    @Override
    public void delete(Paiement paiement) {
        paiementdao.delete(paiement);
    }

    @Override
    public List<Paiement> getByNom(String nom) {
        return (paiementdao.getByNom(nom));
    }

    @Override
    public Paiement getMostRecent(Long numInsc, String nomDisp) {
        return(paiementdao.getMostRecent(numInsc,nomDisp));
    }

    @Override
    public List<Paiement> getByYear(String year) {
        return(paiementdao.getByYear(year));
    }

    @Override
    public List<Paiement> getByYearMonth(String year, String month) {
        return(paiementdao.getByYearMonth(year, month));
    }

    @Override
    public List<Paiement> getByYearMonthDay(String date) {
        return(paiementdao.getByYearMonthDay(date));
    }
    
}
