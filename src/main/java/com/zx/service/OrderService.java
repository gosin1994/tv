package com.zx.service;

import java.util.List;

import com.zx.common.page.Page;
import com.zx.entity.Commission;
import com.zx.entity.Order;

public interface OrderService {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

	List<Order> selectAll(Order query, Page<Order> page);

	List<Commission> getCommissionList(Integer orderId);
}