/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.user.controller;

import bkap.user.entity.Cart;
import bkap.user.entity.Orders;
import bkap.user.entity.Product;
import bkap.user.model.ProductModel;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Le Minh Duc
 */

@Controller
@RequestMapping(value = "/cartController")
public class CartController {
    public static int countCart = 0;
    public static float totalAmount = 0;
    public static List<Cart> listMiniCart =  new ArrayList<>();
    public static String listNamePro = "";
    public static Set<String> a;
    public static String listNamePro(){
        return listNamePro;
    }
    public static List<Cart> ListMiniCart(){
        return listMiniCart;
    }
    public static int CountCart(){
        return countCart;
    }
    public static double TotalAmout(){
        return totalAmount;
    }
    private ProductModel proMod;
    public CartController() {
        proMod =  new ProductModel();
    }
    @RequestMapping(value = "/addCart")
    public String addCart(String productIdd, String qty,HttpSession session, HttpServletRequest request){        
        List<Cart> listCart = (List<Cart>)session.getAttribute("listCart");
        Product pro = proMod.getProductById(productIdd);
        int quantt = 0;
        try {
            quantt = Integer.parseInt(request.getParameter("qty")); 
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        if(listCart==null){
            listCart = new ArrayList<>();
            Cart cart = new Cart();
            if(quantt>0){
                cart = new Cart(pro,quantt);
            }else{
                cart = new Cart(pro,1);
            }
            listCart.add(cart);
        }else{
            boolean check = false;
            for (int i = 0; i < listCart.size(); i++) {
                 if(listCart.get(i).getPro().getProductId().equals(productIdd)){
                    check = true;
                    if(quantt + listCart.get(i).getQty()>=15){
                        listCart.get(i).setQty(15);
                    }else{
                        if(quantt>0){
                            listCart.get(i).setQty(listCart.get(i).getQty()+quantt);
                        }else{
                            listCart.get(i).setQty(listCart.get(i).getQty()+1);
                        }
                    }
                    break;
                 }
            }
            if(check==false){
                Cart cart = new Cart();
                if(quantt>0){
                    cart = new Cart(pro,quantt); 
                }else{
                    cart = new Cart(pro,1);
                }
                listCart.add(cart);
            }
        }
        countCart= listCart.size();
        listMiniCart = listCart;
        totalAmount = calTotalAmout(listCart);

//        List<Cart> x = new ArrayList<>();
//        for (Cart cart : listCart) {
//            x.add(cart);
//        }
//      
//        for (Cart cart : x) {
//            listNamePro+=cart.getPro().getNameProduct()+cart.getQty()+"|";
//        }
        
        session.setAttribute("listCart", listCart);
        session.setAttribute("totalAmount", calTotalAmout(listCart));
        session.setAttribute("countCart", countCart);
        //session.setAttribute("totalAmount", totalAmount);
        return "redirect:blank.htm";
    }
    @RequestMapping(value = "/blank")
    public String blank(HttpSession session){
        session.setAttribute("countCart", countCart);
        session.setAttribute("totalAmount", totalAmount);
        return "user/shopping_cart";
    }
    @RequestMapping(value = "/removeCart")
    public String removeCart(String productId,HttpSession session){
        List<Cart> listCart = (List<Cart>)session.getAttribute("listCart");
        for (int i = 0; i < listCart.size(); i++) {
            if(listCart.get(i).getPro().getProductId().equals(productId)){
                listCart.remove(i);
                countCart-=1;
                break;
            }
        }
        listMiniCart = listCart;
        totalAmount = calTotalAmout(listCart);
        session.setAttribute("countCart", countCart);
        session.setAttribute("listCart", listCart);
        session.setAttribute("totalAmount", calTotalAmout(listCart));
        return "user/shopping_cart";
    }
    @RequestMapping(value = "/removeAllCart")
    public String removeAllCart(HttpSession session){
        List<Cart> listCart = (List<Cart>)session.getAttribute("listCart");
        listCart = new ArrayList<>();
        countCart = 0;
        totalAmount = calTotalAmout(listCart);
        listMiniCart = listCart;
        session.setAttribute("countCart", countCart);
        session.setAttribute("listCart", listCart);
        session.setAttribute("totalAmount", calTotalAmout(listCart));
        return "user/shopping_cart";
    }
    @RequestMapping(value = "/updateCart")
    public String updateCart(HttpServletRequest request,HttpSession session){
        String[] arrayQuantity  = request.getParameterValues("quantitys");
       
        List<Cart> listCart = (List<Cart>)session.getAttribute("listCart");
        for (int i = 0; i < listCart.size(); i++) {
            listCart.get(i).setQty(Integer.parseInt(arrayQuantity[i]));
        }
        listMiniCart = listCart;
        totalAmount = calTotalAmout(listCart);

        session.setAttribute("listCart",listCart);
        session.setAttribute("totalAmount",calTotalAmout(listCart));
        return "user/shopping_cart";
    }
    public float calTotalAmout(List<Cart> listCart){
        float totalAmount = 0;
        for (Cart cart : listCart) {
            totalAmount += cart.getQty()* cart.getPro().getPrice();
        }
        return totalAmount;
    }
   
}
