package com.chenshuangjzh.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.transaction.annotation.Transactional;







import com.chenshuangjzh.dao.BookDao;
import com.chenshuangjzh.pojo.Book;

@Named
@Transactional
public class BookService {

	@Inject
	private BookDao bookDao;
	
	
	public List<Book> findAll() {
		return bookDao.findAll();
	}


	public void save(Book book) {
		book.setNowcount(book.getTotal());
		bookDao.save(book);
	}


	public void del(int id) {
		bookDao.del(id);
	}


	public Object findById(int id) {
		return bookDao.findById(id);
	}


	public void edit(Book book) {
		bookDao.update(book);
	}


	public List<Book> findAll(Map<String, Object> map) {
		return bookDao.findByParam(map);
	}


	public List<Book> findAll(Map<String, Object> param, int page) {
		int pageCount = 2;
		int start = (page-1) * pageCount;
		
		param.put("start", start);
		return bookDao.findByParam(param);
	}
	
	
	
	
	
	
	
	
	
	
}
