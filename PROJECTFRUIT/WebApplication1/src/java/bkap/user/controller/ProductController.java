/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bkap.user.controller;
import static bkap.user.controller.CartController.CountCart;
import static bkap.user.controller.CartController.TotalAmout;
import static bkap.user.controller.CartController.listMiniCart;
import static bkap.user.controller.CartController.listNamePro;
import bkap.user.entity.Cart;
import bkap.user.entity.GroupProduct;
import bkap.user.entity.Orders;
import bkap.user.entity.Product;
import bkap.user.model.ProductModel;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Le Minh Duc
 */
@Controller
@RequestMapping(value = "/proController")
public class ProductController {
    private ProductModel proMod;
    public ProductController() {
        proMod =  new ProductModel();
    }
    @RequestMapping(value = "/getAll")
    public ModelAndView getAll(HttpServletRequest request){
        ModelAndView mav  = new ModelAndView("user/home");
        Product prohot = proMod.getHotProduct();
        List<Product> top4RauCuQua = proMod.getTop4RauCuQua();
        List<Product> top4TraiCay = proMod.getTop4TraiCay();
        List<Product> allProduct = proMod.getAllProduct();
        List<Product> allTraiCay = proMod.getAllTraiCay();
        List<Product> allRauCuQua = proMod.getAllRauCuQua();
        mav.addObject("listCartMini", CartController.listMiniCart);
        mav.addObject("countCart",CartController.countCart);
        //mav.addObject("totalAmount", CartController.totalAmount);
        mav.addObject("prohot", prohot);
        mav.addObject("top4RauCuQua",top4RauCuQua);
        mav.addObject("top4TraiCay",top4TraiCay);
        mav.addObject("allProductt", allProduct);
        mav.addObject("allTraiCay",allTraiCay);
        mav.addObject("allRauCuQua",allRauCuQua);
        return mav;
    }
    @RequestMapping(value="/getOneProduct")
    public ModelAndView getOne(String productId){
        ModelAndView mav  = new ModelAndView("user/product_detail");
        Product pro = proMod.getProductById(productId);
        List<Product> ALLPRO = proMod.getAllProduct();
        List<Product> allRCQ = proMod.getAllRauCuQua();
        List<Product> allTC = proMod.getAllTraiCay();
        List<Product> allRD = proMod.getAllRandom();
        List<Product> allRD1 = proMod.getAllRandom();
        mav.addObject("ALLPRO",ALLPRO);
        mav.addObject("pro", pro);
        mav.addObject("allRD",allRD);
        mav.addObject("allRD1",allRD1);
        mav.addObject("listCartMini", CartController.listMiniCart);
        mav.addObject("countCart",CartController.countCart);
        mav.addObject("namePro",pro.getNameProduct());
        return mav;
    }
    @RequestMapping(value="/getNameProduct")
    public ModelAndView getNameProduct(HttpServletRequest request){
        ModelAndView mav  = new ModelAndView("user/product_detail");
        String name = request.getParameter("nameproduct");
        Product pro = proMod.getProductByName(name);
        List<Product> allRD = proMod.getAllRandom();
        List<Product> allRD1 = proMod.getAllRandom();
        if(pro == null){
           ModelAndView mav2  = new ModelAndView("user/productNotFound");
           mav.addObject("allRD",allRD);
           mav.addObject("allRD1",allRD1);
           return mav2;
        }else{
            mav.addObject("pro", pro);
            mav.addObject("allRD",allRD);
            mav.addObject("allRD1",allRD1);
            return mav;
        }
       
    }
    @RequestMapping(value = "/getAllRCQ")
    public ModelAndView getAllRCQ(){
        ModelAndView mav = new ModelAndView("user/grid");
        List<Product> allProduct = proMod.getAllRauCuQua();//Tất cả sp rau
        List<Product> ALLPRO = proMod.getAllProduct();//Tất cả sản phẩm
        mav.addObject("countCart",CartController.countCart);
        mav.addObject("totalAmount", CartController.totalAmount);
        mav.addObject("listCartMini", CartController.listMiniCart);
        mav.addObject("allProduct", allProduct);
        mav.addObject("ALLPRO", ALLPRO);
        mav.addObject("fruits", "Rau củ quả");
        return mav;
    }
    @RequestMapping(value = "/getAllTC")
    public ModelAndView getAllTC(){
        ModelAndView mav = new ModelAndView("user/grid");
        List<Product> allProduct = proMod.getAllTraiCay();
        List<Product> ALLPRO = proMod.getAllProduct();//Tất cả sản phẩm
        mav.addObject("countCart",CartController.countCart);
        mav.addObject("totalAmount", CartController.totalAmount);
        mav.addObject("listCartMini", CartController.listMiniCart);
        mav.addObject("allProduct", allProduct);
        mav.addObject("ALLPRO", ALLPRO);
        mav.addObject("fruits", "Trái cây");
        return mav;
    }
    @RequestMapping(value = "/getProByPrice")
    public ModelAndView getProbyPrice(HttpServletRequest request){
        ModelAndView mav = new ModelAndView("user/grid");
        String pMin = request.getParameter("priceMin");
        String pMax = request.getParameter("priceMax");
        List<Product> listPro = proMod.getProByPrice(pMin, pMax);
        List<Product> ALLPRO = proMod.getAllProduct();
        mav.addObject("allProduct", listPro);
        mav.addObject("ALLPRO", ALLPRO);
        mav.addObject("fruits", "Lựa chọn theo giá");
        return mav;
    }
    @RequestMapping(value = "/initInsertOd")
    public ModelAndView initInsertOd(){
        ModelAndView mav = new ModelAndView("user/checkout");
        Orders newOrder = new Orders();
        mav.addObject("newOrder",newOrder);
        mav.addObject("totalAmount",CartController.totalAmount);
        return mav;
    }
    @RequestMapping(value = "/insertOd")
    public String insertOd(Orders newOrder,HttpSession session){
        for (Cart cart : listMiniCart) {
            listNamePro+=cart.getQty()+"-"+cart.getPro().getNameProduct()+"|";
        }
        
        newOrder.setListProduct(listNamePro);
        
        boolean check = proMod.insertOrder(newOrder);
        
        if(check){
            List<Cart> listCart = (List<Cart>)session.getAttribute("listCart");
            listCart = new ArrayList<>();
            listMiniCart = new ArrayList<>();
            CartController.countCart = 0;
            CartController.totalAmount = 0;
            listNamePro = "";
            session.setAttribute("listCart",listCart);
            session.setAttribute("listCartMini",listMiniCart);
            return "redirect:getAll.htm";
        }else{
            return "Admin/jsp/error";
        }               
    }
}
