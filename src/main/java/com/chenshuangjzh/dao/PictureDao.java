package com.chenshuangjzh.dao;

import com.chenshuangjzh.pojo.Picture;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import javax.inject.Named;
import java.util.List;

/**
 * Created by ninemax-jzh on 2015/12/25.
 */
@Named
public interface PictureDao {

    @Insert("insert into picture(picture_name,upload_time,size,width,height,hash,mime_type) values(#{pictureName},#{uploadTime},#{size},#{width},#{height},#{hash},#{mimeType})")
    public void save(Picture picture);

    @Select("select * from picture where hash = #{hash}")
    public Picture findByHash(String hash);

    public List<Picture> findAll();
}
