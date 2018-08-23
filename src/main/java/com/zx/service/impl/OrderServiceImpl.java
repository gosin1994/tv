package com.zx.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.common.page.Page;
import com.zx.dao.ApplyDao;
import com.zx.dao.CommissionDao;
import com.zx.dao.OrderDao;
import com.zx.entity.Apply;
import com.zx.entity.Commission;
import com.zx.entity.Order;
import com.zx.service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	
	

	
	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private CommissionDao commissionDao;
	
	public List<Order> selectAll(Order query, Page<Order> page) {
		return orderDao.selectAll(query, page);
	}
	
	
	@Override
	public List<Commission> getCommissionList(Integer orderId) {
		return commissionDao.selectByOrderId(orderId);
	}
	

	public int updateByPrimaryKeySelective(Apply record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKey(Apply record) {
		// TODO Auto-generated method stub
		return 0;
	}




	public int insert(Order record) {
		// TODO Auto-generated method stub
		return 0;
	}




	public int insertSelective(Order record) {
		// TODO Auto-generated method stub
		return 0;
	}




	public Order selectByPrimaryKey(Integer id) {
		return orderDao.selectByPrimaryKey(id);
	}




	public int updateByPrimaryKeySelective(Order record) {
		// TODO Auto-generated method stub
		return 0;
	}




	public int updateByPrimaryKey(Order record) {
		Order dbOrder = orderDao.selectByPrimaryKey(record.getId());
		
		dbOrder.setAmount(record.getAmount());
		dbOrder.setUpdateTime(new Date());
		
		return orderDao.updateByPrimaryKey(dbOrder);
	}

	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}





	



	

	
	

	
	
}
