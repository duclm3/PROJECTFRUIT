/* To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.admin.controller;

import bkap.admin.model.AccountModel;
import bkap.user.entity.Users;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/loginController")
public class LoginController {
    private AccountModel accModel;

        public LoginController() {
            accModel = new AccountModel();
        }
    
    @RequestMapping(value = "/login")
        public ModelAndView displayLogin(){
           ModelAndView mav = new ModelAndView("Admin/jsp/login");
           return mav;
        }
//     @RequestMapping(value = "/login", method = RequestMethod.POST)
//        public String processLogin(@ModelAttribute("user") Users user,Model model,HttpSession session){
//            boolean check = false;
//            try {
//                check = accModel.loginAcc(user.getEmail(),user.getAddresss());
//            } catch (Exception e) {
//            }
//            if(check){
//                session.setAttribute("email",email);
//            }
//            return "login";
//        }    
    @RequestMapping(value = "/processLogin")
    public String login(HttpServletRequest request, HttpServletResponse response) {
        String email = request.getParameter("email");
        String passW = request.getParameter("passW");
        boolean check = accModel.loginAcc(email,passW);
        if (check) {
            HttpSession session = request.getSession();
            session.setAttribute("email",email);
            return "redirect:../admin/home.htm";
        } else {
            return "Admin/jsp/login";
       }
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session){
        session.removeAttribute("email");
        return "redirect:../loginController/login.htm";
    }
}
