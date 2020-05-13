/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.admin.controller;

import bkap.admin.model.GroupProductModel;
import bkap.user.entity.GroupProduct;
import bkap.user.entity.Product;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/groupController")
public class GroupProductController {
    private GroupProductModel gpm;

    public GroupProductController() {
        gpm = new GroupProductModel();
    }
    @RequestMapping(value = "/getAll")
    public ModelAndView getAllGroup(){
        ModelAndView mav = new ModelAndView("Admin/jsp/groupProduct");
        List<GroupProduct> listGroup = gpm.getAllGroup();
        mav.addObject("listGroup", listGroup);
        return mav;
    }
    
    @RequestMapping(value = "/initInsertGroup")
    public ModelAndView initInsert(){
        ModelAndView mav = new ModelAndView("Admin/jsp/newGroup");
        GroupProduct newGP = new GroupProduct();
        
        mav.addObject("newGP",newGP);
        
        return mav;
    }
    
    @RequestMapping(value = "/insertGP")
    public String insertProduct(GroupProduct newGP,ModelMap model){
        boolean check = gpm.insertGroup(newGP);
        if(check){
            return "redirect:getAll.htm";
        }else{
            model.addAttribute("duplicateid",newGP.getGroupId());
            model.addAttribute("newGP",new GroupProduct());
            model.addAttribute("flagInsert",false);
            return "Admin/jsp/newGroup";
        }               
    }
    
    @RequestMapping(value = "/initUpdateGroup")
    public ModelAndView initUpdate(String groupId){
        ModelAndView mav = new ModelAndView("Admin/jsp/updateGroup");
        GroupProduct gUpdate = gpm.getGroupById(groupId);
       
        mav.addObject("gUpdate", gUpdate);
       
        return mav;
    }
    @RequestMapping(value = "/updateGroup")
    public String updateGroup(GroupProduct  gUpdate){
              boolean check = gpm.updateGroup(gUpdate);
        if(check){
            return "redirect:getAll.htm";
        }else{
            return "Admin/jsp/error";
        }
    }
    
     @RequestMapping(value = "/deleteGroup")
     public String deleteProduct(String groupId){
       boolean check =  gpm.deleteGroup(groupId);
        if (check) {
            return "redirect:getAll.htm";
        } else {
            return "Admin/jsp/error";
        }
    }
}
