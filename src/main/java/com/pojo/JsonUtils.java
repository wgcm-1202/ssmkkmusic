package com.pojo;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.io.*;

public class JsonUtils {

    /**
     * 读取json文件
     */
    public static String readJsonFile(String path){
        String laststrJson = "";
        BufferedReader reader;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(path),"UTF-8"));
            String tempString = null;
            int line = 1;
            // 一次读入一行，直到读入null为文件结束
            while ((tempString = reader.readLine()) != null) {
                laststrJson = laststrJson + tempString;
                line++;
            }
            reader.close();
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return laststrJson;
    }

    /**
     * 写出json文件
     */
    public static void writeJsonFile(String newJsonString, String path){
        try {
            Writer fw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(path),"UTF-8"));
            PrintWriter out = new PrintWriter(fw);
            out.write(newJsonString);
            out.println();
            fw.close();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
  /*  public static void deleteJsonFile( String path1){
        String path=path1+".json";
        File file=new File(path);
        try {
           if (file.exists()){
               file.delete();
           }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }*/


    public static void main( String[] args ) {
        String path = "src/main/webapp/source/musicList.json";
        String jsonStr = JsonUtils.readJsonFile(path);
        PlayerSong song=new PlayerSong("飞云之下","林俊杰","飞云之下","04：20","./source/飞云之下.mp3","./images/CD/589856599.jap","./source/飞云之下.txt");
        String p=song.toString();
        System.out.println(song);
        System.out.println(p);
        JSONArray jsonArray = JSONArray.parseArray(jsonStr);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("name", song.getName());
        jsonObject.put("singer", song.getSinger());
        jsonObject.put("album", song.getAlbum());
        jsonObject.put("time", song.getTime());
        jsonObject.put("link_url", song.getLink_url());
        jsonObject.put("picture",song.getPicture());
        jsonObject.put("link_lrc",song.getLink_lrc());
        jsonArray.add(p);
        System.out.println(jsonObject);
        System.out.println(jsonArray);
       /* JSONArray jsonArray = JSONArray.parseArray(jsonStr);
        int size = jsonArray.size();
        for(int  i = 0; i <size; i++) {
            JSONObject jsonObject = jsonArray.getJSONObject(0);
            jsonArray.remove(jsonObject);
        }*/
//将json转换为json字符串
        String newJsonString = jsonArray.toString();
        JsonUtils.writeJsonFile(newJsonString, path);
    }
}