package com.chenshuangjzh.dao;

import com.chenshuangjzh.pojo.Picture;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import javax.inject.Named;
import java.util.List;

/**
 * Created by ninemax-jzh on 2015/12/25.
 */
@Named
public interface PictureDao {

    @Insert("insert into picture(picture_name,upload_time,size,width,height,hash,mime_type) values(#{pictureName},#{uploadTime},#{size},#{width},#{height},#{hash},#{mimeType})")
    void save(Picture picture);

    @Select("select * from picture where hash = #{hash}")
    Picture findByHash(String hash);

    List<Picture> findAll();

    @Update("update picture set picture_name = #{pictureName},upload_time = #{uploadTime},size = #{size},width = #{width},height = #{height},hash = #{hash},mime_type = #{mimeType} where id = #{id}")
    void update(Picture picture);

    Picture findByName(String name);

    List<Picture> search(String q);
}
