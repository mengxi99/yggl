package com.example.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {
    public static String mdtEncode(String str){
        String pwd=null;
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");//获得一个MD5加密的客户端
            md5.update(str.getBytes());//对用户输入的密码进行加密处理，参数为字节数组
            byte[] digest = md5.digest();//加密
            pwd = new BigInteger(1, digest).toString(16);//字节数组转16进制字符串
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return pwd;
    }

//    public static void main(String[] args) {
//        System.out.println(MD5Utils.mdtEncode("123456"));
//    }
}
