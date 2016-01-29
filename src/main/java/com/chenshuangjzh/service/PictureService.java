package com.chenshuangjzh.service;

import com.chenshuangjzh.dao.PictureDao;
import com.chenshuangjzh.pojo.Picture;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.transaction.annotation.Transactional;

import javax.imageio.ImageIO;
import javax.inject.Inject;
import javax.inject.Named;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by ninemax-jzh on 2015/12/25.
 */
@Named
@Transactional
public class PictureService {

    @Inject
    private PictureDao pictureDao;

    public List<Picture> search(String q){
        return pictureDao.search(q);
    }

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

    /**
     * correct pictures' uploadTime
     */
    public void correctUploadTime() {
        List<Picture> pictureList = pictureDao.findAll();
        if(pictureList != null && pictureList.size() != 0){
            DateTimeFormatter dtf = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss");
            for (Picture picture : pictureList){
                String oTime = picture.getUploadTime();
                String tTime = new DateTime(dtf.parseDateTime(oTime).getMillis() / 10000).toString(dtf);
                picture.setUploadTime(tTime);
            }
            for (Picture picture : pictureList){
                pictureDao.update(picture);
            }
        }
    }

    /**
     * fill pictures' width and height
     */
    public void fillWH() {
        File we = new File("C:\\Users\\ninemax-jzh\\Dropbox\\picture\\we");
        if (we.isDirectory()){
            File[] files = we.listFiles();
            int size = files.length;
            if (files != null && size != 0){
                for (int i = 0; i < size - 1; i++) {
                    File image = files[i];
                    BufferedImage bImage = null;
                    try {
                        bImage = ImageIO.read(image);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    Picture picture = pictureDao.findByName(image.getName());
                    picture.setWidth(bImage.getWidth());
                    picture.setHeight(bImage.getHeight());
                    pictureDao.update(picture);
                }
            }
        }
    }
}
