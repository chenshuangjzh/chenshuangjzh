package com.chenshuangjzh.service;

import com.chenshuangjzh.dao.WhisperDao;
import com.chenshuangjzh.pojo.Whisper;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

/**
 * Created by ninemax-jzh on 2015/12/30.
 */
@Named
@Transactional
public class WhisperService {

    @Inject
    private WhisperDao whisperDao;

    /**
     * find all whispers
     * @return
     */
    public Object findAll() {
        List<Whisper> whisperList = whisperDao.findAll();
        return whisperList;
    }
}
