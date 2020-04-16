package com.xiaochen.beatles.service.Impl;

import com.xiaochen.beatles.mapper.ParkMapper;
import com.xiaochen.beatles.pojo.Park;
import com.xiaochen.beatles.service.ParkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ParkService")
public class ParkServiceImpl implements ParkService {

    private ParkMapper parkMapper;

    @Autowired
    public ParkServiceImpl(ParkMapper parkMapper){
        this.parkMapper = parkMapper;
    }


    @Override
    public int insertPark(Park park) {
        return this.parkMapper.insertPark(park);
    }

    @Override
    public int updatePark(Park record) {
        return this.parkMapper.updatePark(record);
    }

    @Override
    public List<Park> selectPark(Park park) {
        return this.parkMapper.selectPark(park);
    }

    @Override
    public List<Park> selectParkList(Park park) {
        return this.parkMapper.selectParkList(park);
    }
}
