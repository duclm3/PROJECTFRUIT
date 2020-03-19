/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.user.controller;

import bkap.user.entity.Users;
import bkap.user.model.LoginModel;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Le Minh Duc
 */
@Controller
@RequestMapping(value = "/loginsignController")
public class LoginSignController {
    private LoginModel loginsign;
    public static String udInfo = null;
    public static boolean statuss = false;
    public boolean getStatus(){
        return statuss;
    }
    public LoginSignController(){
        loginsign = new LoginModel();
    }
    @RequestMapping(value = "/checkAcountt")
    public String checkAcountt(HttpServletRequest request,HttpSession session){
        ModelAndView mav  = new ModelAndView();
        String emaill = request.getParameter("login[username]");
        String password = request.getParameter("login[password]");
        
        String status = null;
        boolean check = loginsign.checkAcount(emaill, password);
        if(check){
           statuss = true;
           session.setAttribute("userEmail", emaill);
           return "redirect:../proController/getAll.htm";
        }
        session.setAttribute("status", "Sai tên tài khoản hoặc mật khẩu !");
        return "login";
    }
    @RequestMapping(value = "/logout")
    public String logOut(HttpSession session){
        session.removeAttribute("userEmail");
        return "redirect:../proController/getAll.htm";
    }
    @RequestMapping(value = "/infoUser")
    public ModelAndView infoUser(HttpSession session,HttpServletRequest request){
        ModelAndView mav  = new ModelAndView("user/infoUser");
        String email = (String)session.getAttribute("userEmail");
        Users user =  loginsign.getUserByEmail(email);
        mav.addObject("userInfo",user);
        if(udInfo!=null){
            mav.addObject("udInfo",udInfo);
            udInfo = null;
        }else{
            mav.addObject("udInfo",udInfo);
        }
        return mav;
    }
    @RequestMapping(value = "/updateInfoUser")
    public String updateInfoUser(HttpServletRequest request){
        String hoten = request.getParameter("hovaten");
        String diachi = request.getParameter("diachihn");
        String sodt = request.getParameter("sodt");
        String email = request.getParameter("dcemail");
        boolean check = loginsign.updateUser(hoten, diachi, sodt, email);
        udInfo = "XXXX";
        return"redirect:infoUser.htm";
    }
    @RequestMapping(value = "/changePassword")
    public ModelAndView changePassword(HttpServletRequest request,HttpSession session){
        ModelAndView mav  = new ModelAndView("user/changePassword");
        String email = (String)session.getAttribute("userEmail");
        String pass = request.getParameter("oldPass");
        String newpass = request.getParameter("newPass");
        String stt = null;
        boolean check = loginsign.checkAcount(email, pass);
        if(newpass.equals("")==true||pass.equals("")==true){
            stt = "Vui lòng điền thông tin vào các trường!";
            mav.addObject("statuss",stt);
        }else if(!check){
            stt = "Mật khẩu không đúng hoặc chưa điền thông tin!";
            mav.addObject("statuss",stt);
        }else if(pass.equals(newpass)== true){
            stt="Mật khẩu mới phải khác mật khẩu cũ!";
            mav.addObject("statuss",stt);
        }
        else{
            boolean check2 = loginsign.updatePassword(email, newpass);
            if(check2){
                stt="updateSuccess";
                mav.addObject("statusss",stt);
                 mav.addObject("statuss","");
            }else{
                stt="Cập nhật không thành công!";
                mav.addObject("statuss",stt);
            }
        }
        return mav;
    }
    @RequestMapping(value = "/signUp")
    public String signUp(HttpServletRequest request,HttpSession session){
        String email = request.getParameter("useremail");
        String username = request.getParameter("username");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        boolean check = loginsign.checkEmailPhoneSU(email, phone);
        if(!check){
            session.setAttribute("statusss","Email hoặc số điện thoại đã được sử dụng!");
            return "redirect:../user/signup.jsp";
        }else{
            Users user = new Users();
            user.setUserName(username);
            user.setEmail(email);
            user.setPhone(phone);
            user.setAddresss(address);
            user.setPassW(password);
            user.setUserStatus(false);
            boolean check2 = loginsign.insertUser(user);
            if(!check){
                session.setAttribute("statusss","Email hoặc số điện thoại đã được sử dụng!");
                return "redirect:../user/signup.jsp"; 
            }else{
                session.setAttribute("userEmail", email);
                return "redirect:infoUser.htm";
            }
            
        }
    }
}
