package com.chenshuangjzh.dao;

import com.chenshuangjzh.pojo.Whisper;
import org.apache.ibatis.annotations.Insert;

import javax.inject.Named;
import java.util.List;

/**
 * Created by ninemax-jzh on 2015/12/30.
 */
@Named
public interface WhisperDao {

    List<Whisper> findAll();

    @Insert("insert into whisper(content,create_time,publisher) values(#{content},#{createTime},#{publisher})")
    void save(Whisper whisper);
}
