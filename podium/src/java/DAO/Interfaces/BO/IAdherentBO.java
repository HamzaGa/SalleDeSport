/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Interfaces.BO;

import Entity.Adherent;
import java.util.List;

/**
 *
 * @author gkgkj
 */
public interface IAdherentBO {
        void save(Adherent adherent);
	void update(Adherent adherent);
	void delete(Adherent adherent);
        List <Adherent> get();
        Adherent getById(long id);
}
