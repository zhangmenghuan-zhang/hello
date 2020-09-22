package cn.crm.web;

import cn.crm.domain.Customer;
import cn.crm.domain.PageBean;
import cn.crm.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/findAll")
    public @ResponseBody Map<String, Object> findAll(Integer page, Integer rows){
        System.out.println("1");
        System.out.println("2");
        System.out.println("3");
        System.out.println("4");
        System.out.println("5");
        if(page==null||page==0){
            page=1;
        }
        if (rows==null||rows==0){
            rows=3;
        }
        PageBean<Customer> pageBean = customerService.findAll(page,rows);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("total", pageBean.getTotalCount());
        map.put("rows", pageBean.getList());
        return map;
    }
    @RequestMapping("/findAllTo")
    public String findAllTo(){
        return "/customer/list";
    }
    @RequestMapping("/updateOne")
    public @ResponseBody Customer updateOne(String cust_id){
        Integer cust = Integer.parseInt(cust_id);
        Customer customer = customerService.updateOne(cust);
        return customer;
    }
    @RequestMapping("/updateOne1")
    public void updateOne1(Customer customer){
        customerService.updateOne1(customer);
    }
    @RequestMapping("/deleteOne")
    public String deleteOne(String cust_id,Model model){
        Integer cust = Integer.parseInt(cust_id);
        model.addAttribute("msg","删除成功");
        customerService.deleteOne(cust);
        return "/customer/list";
    }
    @RequestMapping("/saveOne")
    public String saveOne(Customer customer,Model model){
        model.addAttribute("msg","保存成功");
        customerService.saveOne(customer);
        return "/customer/list";
    }
}
