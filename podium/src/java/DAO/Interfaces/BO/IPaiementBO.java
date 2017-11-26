/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Interfaces.BO;

import Entity.Paiement;
import java.util.List;

/**
 *
 * @author gkgkj
 */
public interface IPaiementBO {
        void save(Paiement paiement);
	void update(Paiement paiement);
	void delete(Paiement paiement);
        List<Paiement> getByNom(String nom);
        Paiement getMostRecent(Long numInsc,String nomDisp);
        List<Paiement> getByYear(String year);
        List<Paiement> getByYearMonth(String year, String month);
        List<Paiement> getByYearMonthDay(String date);

}
