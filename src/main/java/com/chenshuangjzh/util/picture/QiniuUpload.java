package com.chenshuangjzh.util.picture;

import com.chenshuangjzh.pojo.Picture;
import com.chenshuangjzh.util.properties.PropertyUtil;
import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.BucketManager;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.FileInfo;
import com.qiniu.util.Auth;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by jiangzhenghui on 15/12/21.
 */
public class QiniuUpload {

    private static String ACCESS_KEY;
    private static String SECRET_KEY;
    private static Auth auth;
    private static BucketManager bucketManager;

    private UploadManager uploadManager = new UploadManager();

    /**
     * init util parameters
     */
    static {
        String propertyFileName = "qiniu.properties";
        ACCESS_KEY = PropertyUtil.getPropertyValue(propertyFileName,"AK");
        SECRET_KEY = PropertyUtil.getPropertyValue(propertyFileName,"SK");
        auth = Auth.create(ACCESS_KEY,SECRET_KEY);
        bucketManager = new BucketManager(auth);
    }

    /**
     * get uptoken
     * @return uptoken
     */
    public String getToken(){
        return auth.uploadToken("chenshuangjzh");
    }

    /**
     * simple upload
     * @param file to upload File
     * @param key to save as name
     * @return
     * @throws QiniuException
     */
    public MyRet upload(File file,String key) throws QiniuException {
        Response res = uploadManager.put(file,key,getToken());
        MyRet ret = res.jsonToObject(MyRet.class);
        return ret;
    }

    /**
     * get all Buckets
     * @return
     */
    public String[] getBuckets(){
        try {
            return bucketManager.buckets();
        } catch (QiniuException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * get fileInfo according to bucket and perfix
     * @param bucket
     * @return
     */
    public FileInfo[] getFileInfos(String bucket,String prefix){
        BucketManager.FileListIterator iterator = bucketManager.createFileListIterator(bucket,prefix,100,null);
        while(iterator.hasNext()){
            FileInfo[] items = iterator.next();
            return items;
        }
        return null;
    }

    /**
     * transfrom FileInfo to Picture Object
     * @param fileInfos
     * @return
     */
    public List<Picture> transfromFileInfo2Picture(FileInfo[] fileInfos){
        List<Picture> pictureList = new ArrayList<Picture>();
        int fileInfosLength = fileInfos.length;
        if (fileInfos != null && fileInfosLength != 0){
            for (int i = 0; i < fileInfosLength; i++) {
                DateTimeFormatter dtf = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss");
                FileInfo fileInfo = fileInfos[i];
                Picture picture = new Picture();
                long fsize = fileInfo.fsize;
                String hash = fileInfo.hash;
                String key = fileInfo.key;
                String uploadTime = new DateTime(fileInfo.putTime).toString(dtf);
                String mimeType = fileInfo.mimeType;
                picture.setUploadTime(uploadTime);
                picture.setPictureName(key);
                picture.setHash(hash);
                picture.setMimeType(mimeType);
                picture.setSize(fsize);
                pictureList.add(picture);
            }
            return pictureList;
        }
        return pictureList;
    }

    public void test(){
        FileInfo[] fileInfos = getFileInfos("chenshuangjzh","IMG");
        System.out.println("putTime:" + fileInfos[0].putTime);
    }

    public static void main(String[] args) {
        new QiniuUpload().test();
    }
}
