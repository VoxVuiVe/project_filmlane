package com.poly.dao.impl;

import java.util.List;

import com.poly.dao.AbstractDAO;
import com.poly.dao.VideoDao;
import com.poly.entity.Video;

public class VideoDaoImpl extends AbstractDAO<Video> implements VideoDao{

	@Override
	public Video findById(Integer id) {
		return super.finById(Video.class, id);
	}

	@Override
	public Video findByHref(String href) {
		String sql = "SELECT o FROM Video o WHERE o.href = ?0";
		return super.findOne(Video.class, sql, href);
	}

	@Override
	public List<Video> findAll() {
		return super.findAll(Video.class, true);
	}

	@Override
	public List<Video> findAll(int pageNumber, int pageSize) {
		return super.findAll(Video.class, true, pageNumber, pageSize);
	}

	@Override
	public Video create(Video entity) {
		// TODO Auto-generated method stub
		return super.create(entity);
	}

	@Override
	public Video update(Video entity) {
		return super.update(entity);
	}

	@Override
	public Video delete(Video entity) {
		// TODO Auto-generated method stub
		return super.delete(entity);
	}

}
