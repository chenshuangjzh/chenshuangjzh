package com.chenshuangjzh.dao;

import com.chenshuangjzh.pojo.Whisper;

import javax.inject.Named;
import java.util.List;

/**
 * Created by ninemax-jzh on 2015/12/30.
 */
@Named
public interface WhisperDao {

    List<Whisper> findAll();
}
