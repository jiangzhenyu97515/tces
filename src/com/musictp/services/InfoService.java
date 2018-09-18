package com.musictp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.musictp.dao.managerDao;
import com.musictp.entity.Audience;
import com.musictp.entity.Platform;
import com.musictp.entity.Singer;




@Service
public class InfoService {
	@Autowired
	private managerDao managerDao;
	public Audience audiencelogin(Audience audience){
		return managerDao.audiencelogin(audience);
	};
	//π€÷⁄
	public List<Audience> getAudience(){
		return managerDao.getAudience();
	};
	public int addAudience(Audience audience){
		return managerDao.addAudience(audience);
	};
	public Audience getAudienceById(int id){
		 return managerDao.getAudienceById(id);
	}
	public int updateAudience(Audience audience){
		return managerDao.updateAudience(audience);
	}
	public int deleteAudience(int id){
		return managerDao.deleteAudience(id);
	}
	//∏Ë ÷
	public List<Singer> getSinger(){
		return managerDao.getSinger();
	};
	public int addSinger(Singer singer){
		return managerDao.addSinger(singer);
	};
	public Singer getSingerById(int id){
		 return managerDao.getSingerById(id);
	}
	public int updateSinger(Singer singer){
		return managerDao.updateSinger(singer);
	}
	public int deleteSinger(int id){
		return managerDao.deleteSinger(id);
	}
	//
	public List<Platform> getPlatform(){
		return managerDao.getPlatform();
	};
	public int addPlatform(Platform platform){
		return managerDao.addPlatform(platform);
	};
	public int deletePlatform(int id){
		return managerDao.deletePlatform(id);
	}
	public Platform getPlatformById(int id){
		 return managerDao.getPlatformById(id);
	}
	public int updateTicket(Platform platform){
		return managerDao.updateTicket(platform);
	};
	public int updateaTicket(Audience audience){
		return managerDao.updateaTicket(audience);
	};
}
