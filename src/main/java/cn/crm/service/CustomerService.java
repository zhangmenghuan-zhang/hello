package cn.crm.service;

import cn.crm.domain.Customer;
import cn.crm.domain.PageBean;

import java.util.List;

public interface CustomerService {
    PageBean<Customer> findAll(Integer currPage, Integer pageSize);

    Customer updateOne(Integer cust_id);

    void updateOne1(Customer customer);

    void deleteOne(Integer cust);

    void saveOne(Customer customer);
}
