package com.chenshuangjzh.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.CacheNamespace;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import com.chenshuangjzh.pojo.Book;

@CacheNamespace
public interface BookDao {

	@Select("select * from book")
	public List<Book> findAll();

	public void save(Book book);

	@Delete("delete from book where id = #{id}")
	public void del(int id);

	@Select("select * from book where id = #{id}")
	public Book findById(int id);

	@Update("update book set code=#{code},name=#{name},author=#{author},publish=#{publish},total=#{total},nowcount=#{nowcount} where id = #{id}")
	public void update(Book book);

	public List<Book> findByParam(Map<String, Object> map);

}
