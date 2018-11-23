package com.baizhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.dao.RecordDao;
import com.baizhi.entity.Record;
import com.baizhi.entity.RecordDTO;
import com.baizhi.service.RecordService;
@Service
public class RecordServiceImpl implements RecordService {

	@Autowired
	private RecordDao recordDao;
	
	@Override
	public List<RecordDTO> selectAll(int id) {
		 List<RecordDTO> recordList =recordDao.selectAll(id);
		return recordList;

	}

	@Override
	public void insert(Record record) {
		recordDao.insert(record);
	}

}
