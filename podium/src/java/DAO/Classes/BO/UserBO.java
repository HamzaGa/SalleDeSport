/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Classes.BO;

import DAO.Classes.DAO.UserDAO;
import DAO.Interfaces.BO.IUserBO;
import DAO.Interfaces.DAO.IUserDAO;
import Entity.User;

/**
 *
 * @author gkgkj
 */
public class UserBO implements IUserBO {

    IUserDAO userdao = new UserDAO();
        
    @Override
    public void save(User user) {
        userdao.save(user);
    }

    @Override
    public void update(User user) {
        userdao.update(user);
    }

    @Override
    public void delete(User user) {
        userdao.delete(user);
    }
    
    @Override
    public User select(User user) {
        return(userdao.select(user));
    }
       
}
