package com.doubleview.jeebase.system.dao;

import com.doubleview.jeebase.common.base.BaseDao;
import com.doubleview.jeebase.common.persistence.MyBatisDao;
import com.doubleview.jeebase.system.model.User;

/**
 * 用户Dao接口
 */
@MyBatisDao
public interface UserDao extends BaseDao<User>{

}
