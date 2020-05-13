/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.admin.controller;

import bkap.admin.model.GroupProductModel;
import bkap.admin.model.ProductModel;
import bkap.user.entity.GroupProduct;
import bkap.user.entity.Orders;
import bkap.user.entity.Product;
import java.io.File;
import java.util.List;
import javax.servlet.Servlet;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.hibernate.criterion.Order;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/adminproController")
public class ProController {
    private ProductModel proModel;
    private GroupProductModel gpm;

    public ProController() {
        proModel = new ProductModel();
        gpm = new GroupProductModel();
    }
    
    
    @RequestMapping(value ="/getAll")
    public ModelAndView getAllProduct(){
        ModelAndView mav = new ModelAndView("Admin/jsp/listproducts");
        List<Product> listPro = proModel.getAllProduct(); 
        mav.addObject("listPro", listPro);
        return mav;
    }
    
    @RequestMapping(value = "/initInsert")
    public ModelAndView initInsert(){
        ModelAndView mav = new ModelAndView("/Admin/jsp/newProduct");
        Product newPro = new Product();
        List<GroupProduct> listGroup = gpm.getAllGroup();
        mav.addObject("newPro",newPro);
        mav.addObject("listGroup", listGroup);
        return mav;
    }
    
    @RequestMapping(value = "/insert")
    public String insertProduct(Product newPro,ModelMap model){
        boolean check = proModel.insertProduct(newPro);
        if(check){
            model.addAttribute("flagInsert",true);
            return "redirect:getAll.htm";
        }else{
            model.addAttribute("duplicateid",newPro.getProductId());
            model.addAttribute("maxid",proModel.getMaxIdPro());
            model.addAttribute("newPro",new Product());
            model.addAttribute("flagInsert",false);
            return "Admin/jsp/newProduct";
        }               
    }
    
    @RequestMapping(value = "/initUpdate")
    public ModelAndView initUpdate(String productId){
        ModelAndView mav = new ModelAndView("Admin/jsp/updateProduct");
        Product proUpdate = proModel.getProductById(productId);
        List<GroupProduct> listGroup = gpm.getAllGroup();
        mav.addObject("proUpdate", proUpdate);
        mav.addObject("groupnamE",proUpdate.getGroupProduct().getGroupName());
        mav.addObject("listGroup", listGroup);
        return mav;
    }
    
    @RequestMapping(value = "/updateProduct")
    public String updateProduct(Product proUpdate,HttpServletRequest request){
        //Lấy đường dẫn từ thư mục cần lưu trữ ảnh
        String path = request.getRealPath("/Admin/images");
        path = path.substring(0,path.indexOf("\\build"));
        path = path + "\\web\\Admin\\images";
        //Phan tich request
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload uploader = new ServletFileUpload();
        try {
            List<FileItem> lisItems = uploader.parseRequest(request);
            //Duyet tung fileitem de lay thong tin form updateProduct
            for (FileItem lisItem : lisItems) {
                if(lisItem.isFormField()){
                    //Day là cac du lieu feild text  
                    String name = lisItem.getFieldName();
                    String value = lisItem.getString();
                    switch(name){
                        case "productId":
                            proUpdate.setProductId(value);
                            break;
                        case "nameProduct":
                            proUpdate.setNameProduct(value);
                            break;
                        case "price":
                            proUpdate.setPrice(Double.parseDouble(value));
                            break;
                        case "groupProduct.groupId":
                            proUpdate.getGroupProduct().setGroupName(value);
                            break;
                        case "descriptions":
                            proUpdate.setDescriptions(value);
                            break;
                        case "proStatus":
                            proUpdate.setProStatus(Boolean.parseBoolean(value));
                            break;
                    }
                }
                else{
                    String pathImage="../images/"+lisItem.getName();
                    proUpdate.setImageLink("../images"+pathImage);
                    lisItem.write(new File(path+ "/"+ lisItem.getName()));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        boolean check = proModel.updateProduct(proUpdate);
        if(check){
            return "redirect:getAll.htm";
        }else{
            return "Admin/jsp/error";
        }
    }
    
    @RequestMapping(value = "/deleteProduct")
     public String deleteProduct(String productId){
       boolean check =  proModel.deleteProduct(productId);
        if (check) {
            return "redirect:getAll.htm";
        } else {
            return "Admin/jsp/error";
        }
    }
     
    @RequestMapping(value = "/detail")
    public ModelAndView productDetail(String productId){
        ModelAndView mav = new ModelAndView("Admin/jsp/proDetail");
        Product pro = proModel.getProductById(productId);
        mav.addObject("pro", pro);
        return mav;
    }
    @RequestMapping(value ="/getAllOrder")
    public ModelAndView getAllOrder(){
        ModelAndView mav = new ModelAndView("Admin/jsp/orders");
        List<Orders> listOrder = proModel.getAllOrder();
        mav.addObject("listOrder", listOrder);
        return mav;
    }
    @RequestMapping(value="/updateOrder")
    public String updateOrder(String statusName,String orderId,HttpServletRequest request){
        Orders orders = proModel.getOrderbyId(orderId);
        boolean check ;
        if(statusName.equals("xtd")){
            orders.setOrderStatus(2);
            check = proModel.updateStatusOrder(orders);
            if(check){
                return "redirect:getAllOrder.htm";
            }else{
                return "Admin/jsp/error";
            }
        }else if(statusName.equals("dtt")){
            orders.setOrderStatus(3);
            check = proModel.updateStatusOrder(orders);
            if(check){
                return "redirect:getAllOrder.htm";
            }else{
                return "Admin/jsp/error";
            }
        }else if(statusName.equals("huydon")){
            orders.setOrderStatus(0);
            check = proModel.updateStatusOrder(orders);
            if(check){
                return "redirect:getAllOrder.htm";
            }else{
                return "Admin/jsp/error";
            }
        }
        return "redirect:getAllOrder.htm";
    }
}
