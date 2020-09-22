import cn.crm.dao.CustomerDao;
import cn.crm.domain.Customer;
import cn.crm.service.CustomerService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.HashMap;
import java.util.List;

public class TestSpring {
   /*@Test
   public void demo() throws  Exception{
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        CustomerDao customerDao = (CustomerDao) applicationContext.getBean("customerDao");
        HashMap<String,Object> map = new HashMap<String,Object>();
        map.put("pageSize",5);
        map.put("begin",10);
        List<Customer> list = customerDao.findAll(map);

    }*/
}
