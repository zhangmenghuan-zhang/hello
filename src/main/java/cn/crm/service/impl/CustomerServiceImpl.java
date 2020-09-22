package cn.crm.service.impl;

import cn.crm.dao.CustomerDao;
import cn.crm.domain.Customer;
import cn.crm.domain.PageBean;
import cn.crm.service.CustomerService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDao customerDao;
    @Override
    public PageBean<Customer> findAll(Integer currPage, Integer pageSize) {
        //System.out.println("CustomerServiceImpl的findAll");
        HashMap<String,Object> map = new HashMap<String,Object>();
        PageBean<Customer> pageBean = new PageBean<Customer>();
        // 设置当前页数:
        pageBean.setCurrPage(currPage);
        // 设置每页显示记录数：
        pageBean.setPageSize(pageSize);
        // 设置总记录数:
        Integer totalCount = customerDao.findCount();
        //System.out.println(totalCount);
        pageBean.setTotalCount(totalCount);
        // 设置总页数：
        double tc = totalCount;
        Double num = Math.ceil(tc /pageSize);
        pageBean.setTotalPage(num.intValue());
        // 设置每页显示数据的集合:
        Integer begin = (currPage - 1) * pageSize;
        map.put("pageSize",pageSize);
        map.put("begin",begin);
        List<Customer> list = customerDao.findAll(map);
        pageBean.setList(list);

        return pageBean;
    }

    @Override
    public Customer updateOne(Integer cust_id) {
        Customer customer = customerDao.updateOne(cust_id);
        return customer;
    }

    @Override
    public void updateOne1(Customer customer) {
        customerDao.updateOne1(customer);
    }

    @Override
    public void deleteOne(Integer cust) {
        customerDao.deleteOne(cust);
    }

    @Override
    public void saveOne(Customer customer) {
        customerDao.saveOne(customer);
    }
}
