package cn.crm.dao;

import cn.crm.domain.Customer;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public interface CustomerDao {
    @Select("select * from cst_customer limit #{begin},#{pageSize}")
    List<Customer> findAll(HashMap<String,Object> map);
    @Select("select count(*) from cst_customer")
    Integer findCount();
    @Select("select * from cst_customer where cust_id = #{cust_id}")
    Customer updateOne(Integer cust_id);
    @Update("update cst_customer set cust_name=#{cust_name},cust_source=#{cust_source},cust_industry=#{cust_industry},cust_level=#{cust_level},cust_phone=#{cust_phone},cust_mobile=#{cust_mobile} where cust_id = #{cust_id}")
    void updateOne1(Customer customer);
    @Delete("delete from cst_customer where cust_id = #{cust_id}")
    void deleteOne(Integer cust_id);
    @Insert("insert into cst_customer (cust_name,cust_source,cust_industry,cust_level,cust_phone,cust_mobile) values(#{cust_name},#{cust_source},#{cust_industry},#{cust_level},#{cust_phone},#{cust_mobile})")
    void saveOne(Customer customer);
}
