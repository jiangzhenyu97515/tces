package com.musictp.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.musictp.dao.managerDao;
import com.musictp.entity.Platform;


@Service
public class AudienceService {
	@Autowired
	private managerDao managerDao;

}
