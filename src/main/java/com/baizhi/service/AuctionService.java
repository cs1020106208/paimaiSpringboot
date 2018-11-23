package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Auction;

public interface AuctionService {
	//查询所有商品
		public List<Auction> selectAllAuction(Auction auction); 
		
	//查询所有商品
		public Auction selectOneAuctioin(int id); 
		
	//添加商品
		public void insertAuction(Auction auction);

	//删除商品
		public void deleteAuction(int id);
		
	//修改商品
		public void updateAuction(Auction auction);
		
}
