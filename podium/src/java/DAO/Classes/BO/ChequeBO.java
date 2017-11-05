/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.BO;

import DAO.Classes.DAO.ChequeDAO;
import DAO.Interfaces.BO.IChequeBO;
import DAO.Interfaces.DAO.IChequeDAO;
import Entity.Cheque;

/**
 *
 * @author gkgkj
 */
public class ChequeBO implements IChequeBO {
    
    IChequeDAO chequeDAO = new ChequeDAO();
    
    @Override
    public void save(Cheque cheque) {
        chequeDAO.save(cheque);
    }

    @Override
    public void update(Cheque cheque) {
        chequeDAO.save(cheque);
    }

    @Override
    public void delete(Cheque cheque) {
        chequeDAO.save(cheque);
    }
    
}
