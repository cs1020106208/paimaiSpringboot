package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Auction;

public interface AuctionService {
	//��ѯ������Ʒ
		public List<Auction> selectAllAuction(Auction auction); 
		
	//��ѯ������Ʒ
		public Auction selectOneAuctioin(int id); 
		
	//�����Ʒ
		public void insertAuction(Auction auction);

	//ɾ����Ʒ
		public void deleteAuction(int id);
		
	//�޸���Ʒ
		public void updateAuction(Auction auction);
		
}
