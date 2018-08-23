package com.zx.dao;

import com.zx.entity.Customer;
import com.zx.entity.EduCustomer;

/**
 * 提升学历的客户dao
 * @author Administrator
 *
 */
public interface EduCustomerDao {

	int deleteByPrimaryKey(Integer id);

    int insert(EduCustomer record);

    int insertSelective(EduCustomer record);

    EduCustomer selectByPrimaryKey(Integer id);
    
    EduCustomer selectByPhone(String phone);

    int updateByPrimaryKeySelective(EduCustomer record);

    int updateByPrimaryKey(EduCustomer record);

}
