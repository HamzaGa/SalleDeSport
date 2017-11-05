/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Interfaces.BO;

import Entity.Paiement;

/**
 *
 * @author gkgkj
 */
public interface IPaiementBO {
        void save(Paiement paiement);
	void update(Paiement paiement);
	void delete(Paiement paiement);
    
}
