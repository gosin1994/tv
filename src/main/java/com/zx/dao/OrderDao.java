package com.zx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zx.common.page.Page;
import com.zx.entity.Order;

public interface OrderDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
    
    List<Order> selectAll(@Param("query")Order query, Page<Order> page);
}