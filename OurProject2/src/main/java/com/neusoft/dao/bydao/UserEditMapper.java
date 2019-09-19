package com.neusoft.dao.bydao;

import com.neusoft.bean.lybean.UserInfo;

public interface UserEditMapper {
	String selectById(int uid);
	void userEdit(UserInfo userInfo);
}
