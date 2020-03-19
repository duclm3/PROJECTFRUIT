/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.admin.controller;

import bkap.admin.model.AccountModel;
import bkap.user.entity.Users;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/accController")
public class AccountController {
    private AccountModel accModel;

    public AccountController() {
        accModel = new AccountModel();
    }
    
    @RequestMapping(value = "/getAllAcc")
    public ModelAndView getAllUsers(){
        ModelAndView mav = new ModelAndView("Admin/jsp/listaccount");
        List<Users> listUser = accModel.getAllUsers();
        mav.addObject("listUser", listUser);
        return mav;
    }
}