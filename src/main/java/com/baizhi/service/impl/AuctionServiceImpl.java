package com.baizhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.dao.AuctionDao;
import com.baizhi.entity.Auction;
import com.baizhi.service.AuctionService;
import org.springframework.transaction.annotation.Transactional;

@Service("AuctionService")
@Transactional
public class AuctionServiceImpl implements AuctionService {
	@Autowired	
private AuctionDao auctionDao;

public void setAuctionDao(AuctionDao auctionDao) {
	this.auctionDao = auctionDao;
}

	public AuctionDao getAuctionDao() {
	return auctionDao;
}

	//����ȫ��
	@Override
	public List<Auction> selectAllAuction(Auction auction) {
		return auctionDao.selectAllAuction(auction);
				
	}

	/*@Override
	public List<Auction> selectAllAuction() {
		return auctionDao.selectAllAuction();
	}*/

	//����һ��
	@Override
	public Auction selectOneAuctioin(int id) {
		Auction auction=auctionDao.selectOneAuction(id);
		return auction;
	}
	
	//���
	@Override
	public void insertAuction(Auction auction) {
		auctionDao.insertAuction(auction);
	}

	//ɾ��
	@Override
	public void deleteAuction(int id) {
			auctionDao.deleteAuction(id);
	}
	
	//�޸�
	@Override
	public void updateAuction(Auction auction) {
			auctionDao.updateAuction(auction);
	}


	
}
