/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.BO;

import DAO.Classes.DAO.DisciplineDAO;
import DAO.Interfaces.BO.IDisciplineBO;
import DAO.Interfaces.DAO.IDisciplineDAO;
import Entity.Discipline;
import java.util.List;

/**
 *
 * @author Hamza Ga
 */
public class DisciplineBO implements IDisciplineBO{
    
    IDisciplineDAO disciplineDAO=new DisciplineDAO();

    @Override
    public void save(Discipline discipline) {
        disciplineDAO.save(discipline);
    }

    @Override
    public void update(Discipline discipline) {
        disciplineDAO.update(discipline);
    }

    @Override
    public void delete(Discipline discipline) {
        disciplineDAO.delete(discipline);
    }

    @Override
    public List select(){
        return(disciplineDAO.select());
    }

    @Override
    public Discipline getById(int id) {
        return(disciplineDAO.getById(id));
    }
    
}
