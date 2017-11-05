/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.BO;

import DAO.Classes.DAO.AdherentDAO;
import DAO.Interfaces.BO.IAdherentBO;
import DAO.Interfaces.DAO.IAdherentDAO;
import Entity.Adherent;
import java.util.List;

/**
 *
 * @author gkgkj
 */
public class AdherentBO implements IAdherentBO {
    
    IAdherentDAO adherentDAO = new AdherentDAO();
    
    @Override
    public void save(Adherent adherent) {
        adherentDAO.save(adherent);
    }

    @Override
    public void update(Adherent adherent) {
        adherentDAO.update(adherent);
    }

    @Override
    public void delete(Adherent adherent) {
        adherentDAO.delete(adherent);
    }

    @Override
    public List <Adherent> get() {
            return adherentDAO.get();
    }

    @Override
    public Adherent getById(long id) {
        return adherentDAO.getById(id);
    }
}
