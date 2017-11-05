/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.BO;

import DAO.Classes.DAO.PointageDAO;
import DAO.Interfaces.BO.IPointageBO;
import DAO.Interfaces.DAO.IPointageDAO;
import Entity.Pointage;

/**
 *
 * @author gkgkj
 */
public class PointageBO implements IPointageBO {

    IPointageDAO pointagedao = new PointageDAO();
    
    @Override
    public void save(Pointage pointage) {
        pointagedao.save(pointage);
    }

    @Override
    public void update(Pointage pointage) {
        pointagedao.update(pointage);
    }

    @Override
    public void delete(Pointage pointage) {
        pointagedao.delete(pointage);
    }
    
    
}
