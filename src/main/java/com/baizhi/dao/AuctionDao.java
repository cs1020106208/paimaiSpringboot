package com.baizhi.dao;

import com.baizhi.entity.Auction;

import java.util.List;

public interface AuctionDao {

//��ѯ������Ʒ

	public List<Auction> selectAllAuction(Auction auction); 
	
//��ѯһ����Ʒ
	public Auction selectOneAuction(int id); 
	
//�����Ʒ
	public void insertAuction(Auction auction);

//ɾ����Ʒ
	public void deleteAuction(int id);
	
//�޸���Ʒ
	public void updateAuction(Auction auction);
	
}
