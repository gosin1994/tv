package com.zx.service;

import com.zx.entity.Customer;

public interface CustomerService {
    int deleteByPrimaryKey(Integer id);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);

	void apply(Customer customer);

	boolean isPhoneExist(String phone);
}