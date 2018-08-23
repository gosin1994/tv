package com.zx.dao;

import java.util.List;

import com.zx.entity.Remark;

public interface EduRemarkDao {

	void save(Remark rk);

	List<Remark> selectByApplyId(Integer applyId);

}
