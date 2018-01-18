/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edcarlos.model.dao;

import javax.ejb.Local;

/**
 *
 * @author adminn
 */
@Local
public interface LoginDaoLocal {

    public boolean checkUser(String username, String password);
    void businessMethod();

}
