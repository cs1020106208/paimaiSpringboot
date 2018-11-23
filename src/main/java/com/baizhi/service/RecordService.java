package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Record;
import com.baizhi.entity.RecordDTO;

public interface RecordService {
 
	public List<RecordDTO> selectAll(int id);

	public void insert(Record record);
}
