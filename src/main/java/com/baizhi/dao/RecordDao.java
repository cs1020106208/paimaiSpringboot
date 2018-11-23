package com.baizhi.dao;

import java.util.List;

import com.baizhi.entity.Record;
import com.baizhi.entity.RecordDTO;

public interface RecordDao {
	
public List<RecordDTO> selectAll(int id);
public void insert(Record record);

}
