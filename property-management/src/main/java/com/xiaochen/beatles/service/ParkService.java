package com.xiaochen.beatles.service;

import com.xiaochen.beatles.pojo.Park;

import java.util.List;

public interface ParkService {

    int insertPark(Park park);

    int updatePark(Park record);

    List<Park> selectPark(Park park);

    List<Park> selectParkList(Park park);
}
