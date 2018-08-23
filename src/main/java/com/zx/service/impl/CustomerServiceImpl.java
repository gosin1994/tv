package com.zx.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.dao.ApplyDao;
import com.zx.dao.CustomerDao;
import com.zx.dao.MemberDao;
import com.zx.entity.Apply;
import com.zx.entity.Customer;
import com.zx.entity.Member;
import com.zx.service.CustomerService;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	
	
	@Autowired
	private CustomerDao customerDao;
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private ApplyDao applyDao;
	
	

	public Customer selectByPrimaryKey(Integer id) {
		return customerDao.selectByPrimaryKey(id);
	}
	
	
	public void apply(Customer customer) {


		customer.setCreateTime(new Date());
		customer.setUpdateTime(customer.getCreateTime());
		
		Member samePhonemember = memberDao.selectByPhone(customer.getPhone());
		if(samePhonemember!=null){
			customer.setIsMember(1);
		}else {
			customer.setIsMember(0);
		}
		
		customerDao.insert(customer);
		
		
		Apply apply = new Apply();
		
		
		apply.setName(customer.getName());
		apply.setPhone(customer.getPhone());
		apply.setAge(customer.getAge());
		apply.setInsureYear(customer.getInsureYear());
		apply.setEducationLevel(customer.getEducationLevel());
		apply.setCustomerId(customer.getId());
		apply.setIsMember(customer.getIsMember());
		apply.setMemberId(customer.getMemberId());
		
		if(customer.getMemberId()!=0){
			
			Member member = memberDao.selectByPrimaryKey(customer.getMemberId());
			apply.setMemberName(member.getName());
			apply.setRootMemberId(member.getRootMemberId());
			apply.setRootMemberName(member.getRootMemberName());
		}
		
		apply.setState(0);
		
		apply.setCreateTime(customer.getCreateTime());
		apply.setUpdateTime(apply.getCreateTime());
		
		applyDao.insert(apply);
		
		
	}
	
	
	public int insert(Customer record) {
		// TODO Auto-generated method stub
		return customerDao.insert(record);
	}



	@Override
	public boolean isPhoneExist(String phone) {
		Customer dbCustomer = customerDao.selectByPhone(phone);
		return dbCustomer!=null;
	}

	
	
	
	

	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}



	public int insertSelective(Customer record) {
		// TODO Auto-generated method stub
		return 0;
	}



	



	public int updateByPrimaryKeySelective(Customer record) {
		// TODO Auto-generated method stub
		return 0;
	}



	public int updateByPrimaryKey(Customer record) {
		// TODO Auto-generated method stub
		return 0;
	}






	




	
	
}
