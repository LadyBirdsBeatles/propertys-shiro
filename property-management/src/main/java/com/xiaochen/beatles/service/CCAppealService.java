package com.xiaochen.beatles.service;

import com.xiaochen.beatles.pojo.Admin;
import com.xiaochen.beatles.pojo.Appeal;
import com.xiaochen.beatles.pojo.Reply;

import java.util.List;
import java.util.Map;

public interface CCAppealService {
    /**
     * 按id查询投诉表
     * @param id
     * @return
     */
    public Appeal getAppeal(int id);

    /**
     * 查询所有投诉表
     * @param map
     * @return
     */
    public List<Appeal> ccGetAppealAll(Map map);

    /**
     * 查询所有客服人员
     * @return
     */
    public List<Admin> ccGetAdminAll();

    /**
     * 修改报修表维修人员
     * @param map
     * @return
     */
    int ccUpdateAdmin(Map map);

    /**
     * 插入回复内容
     * @param reply
     * @return
     */
    public int ccInsert(Reply reply);

    /**
     * 修改投诉表状态
     * @param appeal
     * @return
     */
    int ccUpdateState(Appeal appeal);
}
