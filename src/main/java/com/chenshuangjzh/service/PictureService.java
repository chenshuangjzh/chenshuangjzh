package com.chenshuangjzh.service;

import com.chenshuangjzh.dao.PictureDao;
import com.chenshuangjzh.pojo.Picture;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

/**
 * Created by ninemax-jzh on 2015/12/25.
 */
@Named
@Transactional
public class PictureService {

    @Inject
    private PictureDao pictureDao;

    /**
     * save picture information to db
     * @param picture
     */
    public void save(Picture picture){
        Picture tempPicture = pictureDao.findByHash(picture.getHash());
        if (tempPicture == null){
            pictureDao.save(picture);
        }
    }

    /**
     * find all pictures
     * @return
     */
    public List<Picture> findAll() {
        return pictureDao.findAll();
    }
}
