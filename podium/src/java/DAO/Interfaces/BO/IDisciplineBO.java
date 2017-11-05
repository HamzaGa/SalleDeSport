/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Interfaces.BO;

import Entity.Discipline;
import java.util.List;

/**
 *
 * @author Hamza Ga
 */
public interface IDisciplineBO {
        void save(Discipline discipline);
	void update(Discipline discipline);
	void delete(Discipline discipline);
        List select();
        Discipline getById(int id);
}
