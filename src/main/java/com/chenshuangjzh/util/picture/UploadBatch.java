package com.chenshuangjzh.util.picture;

import com.qiniu.common.QiniuException;

import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by jiangzhenghui on 15/12/21.
 */
public class UploadBatch {

    private String fileDirectory = "";

    /**
     * init to upload files's directory
     * @param fileDirectory
     */
    public UploadBatch(String fileDirectory){
        this.fileDirectory = fileDirectory;
    }

    /**
     * upload images in file directory
     * @return
     * @throws QiniuException
     */
    public List<MyRet> batchUpload() throws QiniuException {
        File file = new File(fileDirectory);
        if(file.isDirectory()){
            System.out.println("is Directory");
            FilenameFilter filenameFilter = new FilenameFilter() {
                public boolean accept(File dir, String name) {
                    return name.endsWith("jpeg");
                }
            };
            File[] files = file.listFiles(filenameFilter);
            System.out.println("find " + files.length + " pictures");
            if(files != null && files.length != 0){
                QiniuUpload qiniuUpload = new QiniuUpload();
                List<MyRet> retList = new ArrayList<MyRet>();
                for(File uploadFile : files){
                    MyRet myRet = qiniuUpload.upload(uploadFile,uploadFile.getName());
                    retList.add(myRet);
                }
                return retList;
            }
        }else {
            System.out.println("is not a directory");
        }
        return null;
    }

}
