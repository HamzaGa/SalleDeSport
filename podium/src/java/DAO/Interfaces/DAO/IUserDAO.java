/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Interfaces.DAO;

import Entity.User;

/**
 *
 * @author gkgkj
 */
public interface IUserDAO {
        void save(User user);
	void update(User user);
	void delete(User user);
        User select(User user);
}
