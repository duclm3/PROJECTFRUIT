/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/admin")
public class HomeController {
    @RequestMapping(value = "/home")
     public ModelAndView showHome() {
         ModelAndView mav = new ModelAndView("Admin/jsp/home");
    return mav;
  }
}
