/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Interfaces.BO;

import Entity.Pointage;

/**
 *
 * @author gkgkj
 */
public interface IPointageBO {
        void save(Pointage pointage);
	void update(Pointage pointage);
	void delete(Pointage pointage);
}
