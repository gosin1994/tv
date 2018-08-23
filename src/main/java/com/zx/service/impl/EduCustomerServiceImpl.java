package com.zx.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.dao.ApplyDao;
import com.zx.dao.ApplyDao2;
import com.zx.dao.EduCustomerDao;
import com.zx.dao.MemberDao;
import com.zx.entity.Apply;
import com.zx.entity.Apply2;
import com.zx.entity.EduCustomer;
import com.zx.entity.Member;
import com.zx.service.EduCustomerService;

@Service("eduCustomerService")
public class EduCustomerServiceImpl implements EduCustomerService {

	
	@Autowired
	private EduCustomerDao eduCustomerDao;
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private ApplyDao2 applyDao2;
	
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(EduCustomer record) {
		return eduCustomerDao.insert(record);
	}

	@Override
	public int insertSelective(EduCustomer record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public EduCustomer selectByPrimaryKey(Integer id) {
		return eduCustomerDao.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(EduCustomer record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(EduCustomer record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void apply2(EduCustomer eduCustomer) {
		eduCustomer.setCreateTime(new Date());
		eduCustomer.setUpdateTime(eduCustomer.getCreateTime());
		
		Member samePhonemember = memberDao.selectByPhone(eduCustomer.getPhone());
		if(samePhonemember!=null){
			eduCustomer.setIsMember(1);
		}else {
			eduCustomer.setIsMember(0);
		}
		
		eduCustomerDao.insert(eduCustomer);
		
		//Apply apply = new Apply();
		Apply2 apply = new Apply2();
		
		apply.setName(eduCustomer.getName());
		apply.setPhone(eduCustomer.getPhone());
		apply.setAge(eduCustomer.getAge());
		
		apply.setEducationLevel(eduCustomer.getEducationLevel());
		apply.setEnterEducationLevel(eduCustomer.getEnterEducationLevel());
		
		apply.setMemberId(eduCustomer.getMemberId());
		apply.setIsMember(eduCustomer.getIsMember());
		apply.setCustomerId(eduCustomer.getId());
		
		if (eduCustomer.getMemberId() != 0) {
			Member member = memberDao.selectByPrimaryKey(eduCustomer.getMemberId());
			apply.setMemberName(member.getName());
			apply.setRootMemberId(member.getRootMemberId());
			apply.setRootMemberName(member.getRootMemberName());
		}
		apply.setState(0);
		
		apply.setCreateTime(eduCustomer.getCreateTime());
		apply.setUpdateTime(apply.getCreateTime());
		
		applyDao2.insert(apply);
	}

	@Override
	public boolean isPhoneExist(String phone) {
		// TODO Auto-generated method stub
		return false;
	}

}
