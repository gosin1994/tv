package com.zx.entity;

import java.util.Date;

public class Order {
    private Integer id;

    private Integer applyId;

    private Integer customerId;

    private String customerName;

    private String phone;

    private Integer memberId;

    private String memberName;

    private Integer amount;

    private Integer commissionAmount;

    private Integer userId;

    private String userName;

    private Date updateTime;

    private Date createTime;
    
    private Integer rootMemberId;
    
    private String rootMemberName;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getApplyId() {
		return applyId;
	}

	public void setApplyId(Integer applyId) {
		this.applyId = applyId;
	}

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public Integer getCommissionAmount() {
		return commissionAmount;
	}

	public void setCommissionAmount(Integer commissionAmount) {
		this.commissionAmount = commissionAmount;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getRootMemberId() {
		return rootMemberId;
	}

	public void setRootMemberId(Integer rootMemberId) {
		this.rootMemberId = rootMemberId;
	}

	public String getRootMemberName() {
		return rootMemberName;
	}

	public void setRootMemberName(String rootMemberName) {
		this.rootMemberName = rootMemberName;
	}

}