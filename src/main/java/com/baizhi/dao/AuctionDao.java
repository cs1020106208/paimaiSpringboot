package com.baizhi.dao;

import com.baizhi.entity.Auction;

import java.util.List;

public interface AuctionDao {

//查询所有商品

	public List<Auction> selectAllAuction(Auction auction); 
	
//查询一个商品
	public Auction selectOneAuction(int id); 
	
//添加商品
	public void insertAuction(Auction auction);

//删除商品
	public void deleteAuction(int id);
	
//修改商品
	public void updateAuction(Auction auction);
	
}
