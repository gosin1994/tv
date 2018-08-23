package com.zx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zx.common.page.Page;
import com.zx.entity.Apply;

public interface ApplyDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Apply apply);

    int insertSelective(Apply record);

    Apply selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Apply record);

    int updateByPrimaryKey(Apply record);

	List<Apply> selectAll(@Param("query")Apply query, Page<Apply> page);

	int updateMemberStateByCustomerId(Integer customerId);
}