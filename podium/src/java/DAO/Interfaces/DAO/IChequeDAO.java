/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Interfaces.DAO;

import Entity.Cheque;

/**
 *
 * @author gkgkj
 */
public interface IChequeDAO {
        void save(Cheque cheque);
	void update(Cheque cheque);
	void delete(Cheque cheque);

}
