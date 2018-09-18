package com.musictp.dao;

import java.util.List;

import com.musictp.entity.Audience;
import com.musictp.entity.Manager;
import com.musictp.entity.Platform;
import com.musictp.entity.Singer;


public interface managerDao {	
		Manager getManager(Manager manager);
		Audience audiencelogin(Audience audience);
		//π€÷⁄Dao
		List<Audience> getAudience();
		int addAudience(Audience audience);
		Audience getAudienceById(int id);
		int updateAudience(Audience audience);
		int deleteAudience(int id);
		//∏Ë ÷Dao
		List<Singer> getSinger();
		int addSinger(Singer singer);
		Singer getSingerById(int id);
		int updateSinger(Singer singer);
		int deleteSinger(int id);
		//
		List<Platform> getPlatform();
		int addPlatform(Platform platform);
		Platform getPlatformById(int id);
		int deletePlatform(int id);
		int updateTicket(Platform platform);
		int updateaTicket(Audience audience);
		
}
