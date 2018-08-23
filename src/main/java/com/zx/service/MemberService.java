package com.zx.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.zx.common.page.Page;
import com.zx.entity.Commission;
import com.zx.entity.Member;
import com.zx.entity.Node;

public interface MemberService {
	
	List<Member> selectAll(Member query, Page<Member> page);
	
	List<Member> selectChildMembers(Member query, Page<Member> page, String phone);
	
    int deleteByPrimaryKey(Integer id);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);

	void apply(Member member);

	void persist(Member member);

	Map<String, Object> getInfo(String name, String phone);

	List<Commission> getCommissionList(Integer memberId, Page<Commission> page);

	List<Node> buildChildMemberTree(String phone);

	boolean isPhoneExist(String phone);

	String login(HttpServletRequest request, String phone, String name);

	void logout(HttpServletRequest request);

	
}