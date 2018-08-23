package com.zx.service;

import com.zx.entity.EduCustomer;

/**
 * 学历提升service
 * @author Administrator
 *
 */
public interface EduCustomerService {

	int deleteByPrimaryKey(Integer id);

    int insert(EduCustomer record);

    int insertSelective(EduCustomer record);

    EduCustomer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(EduCustomer record);

    int updateByPrimaryKey(EduCustomer record);

	void apply2(EduCustomer customer);

	boolean isPhoneExist(String phone);
	
}
