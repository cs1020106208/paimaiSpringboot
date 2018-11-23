package com.baizhi.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baizhi.entity.Auction;
import com.baizhi.entity.Record;
import com.baizhi.entity.RecordDTO;
import com.baizhi.entity.User;
import com.baizhi.service.AuctionService;
import com.baizhi.service.RecordService;

@Controller
public class RecordController {
  
	@Autowired
	private AuctionService auctionService;
	@Autowired
	private RecordService recordService;
	
	/**
	 * 展示商品竞拍的记录与商品的信息
	 * @param auction_id
	 * @param map
	 * @return
	 */
	@RequestMapping("/selectAll")
	public String selectAll(int auction_id,Map map,HttpSession session){
		User user=(User) session.getAttribute("user");
		
		Auction auction=auctionService.selectOneAuctioin(auction_id);
		map.put("auction",auction);
		
		List<RecordDTO> recordList=recordService.selectAll(auction_id);
		map.put("recordList", recordList);

		return "auction";
	}
	
	
	@RequestMapping("/insert")
	public String insert(Record record,HttpSession session){
		User user=(User) session.getAttribute("user");
			record.setUser_id(user.getUser_id());
			
			recordService.insert(record);
		return "redirect:/selectAll.do?auction_id="+record.getAuction_id();
	}
	

}
