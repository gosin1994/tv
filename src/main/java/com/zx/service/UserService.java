package com.zx.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.zx.common.page.Page;
import com.zx.entity.Member;
import com.zx.entity.User;

public interface UserService {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    String login(HttpServletRequest request, String phone, String password);
    
	void logout(HttpServletRequest request);

	List<User> selectAll(User query, Page<User> page);

	void persist(User user);

}