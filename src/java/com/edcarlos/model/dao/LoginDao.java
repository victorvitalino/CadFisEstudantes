/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edcarlos.model.dao;

//import com.model.Login;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless
public class LoginDao implements LoginDaoLocal {

    //@PersistenceContext
    //private EntityManager em;

    @Override
    public boolean checkUser(String userName, String password) {
      //List<String> s = em.createQuery("select e from LOGIN e where e.userName='" + userName + "' and e.password='" + password + "'").getResultList();//List<Login> s = (List<Login>) em.createQuery("select e from LOGIN e where e.userName='" + userName + "' and e.password='" + password + "'").getResultList();
        //System.out.println("is list empty ?" + s.isEmpty() + " for the" + userName + " and " + password);

      //  if (!s.isEmpty()) {
           //return true;
        // } else {
        // return false;
        //  }
        //String chico = "chico";
        return "admin".equals(userName) && "admin".equals(password);
          
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    @Override
    public void businessMethod() {
    }

}
