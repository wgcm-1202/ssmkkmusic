package com.pojo;

/*import net.sf.json.JSONObject;*/
import com.alibaba.fastjson.JSONObject;
import java.io.Serializable;
import java.util.Objects;

public class PlayerSong implements Serializable {
    private String name;

    private String singer;

    private String album;

    private String time;

    private String link_url;

    private String picture;

    private String link_lrc;

    public String getName() {
        return name;
    }

    public PlayerSong() {
    }

    public PlayerSong( String name, String singer, String album, String time, String link_url, String picture, String link_lrc ) {
        this.name = name;
        this.singer = singer;
        this.album = album;
        this.time = time;
        this.link_url = link_url;
        this.picture = picture;
        this.link_lrc = link_lrc;
    }

    public void setName( String name) {
        this.name = name;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getLink_url() {
        return link_url;
    }

    public void setLink_url(String link_url) {
        this.link_url = link_url;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getLink_lrc() {
        return link_lrc;
    }

    public void setLink_lrc(String link_lrc) {
        this.link_lrc = link_lrc;
    }

    @Override
    public String toString() {
        return "{" +
                "name='" + name + '\'' +
                ", singer='" + singer + '\'' +
                ", album='" + album + '\'' +
                ", time='" + time + '\'' +
                ", link_url='" + link_url + '\'' +
                ", picture='" + picture + '\'' +
                ", link_lrc='" + link_lrc + '\'' +
                '}';
    }
   /* @Override
    public String toString() {
        return JSONObject.toJSONString(this);
    }*/
   @Override
   public boolean equals(Object o) {
       if (this == o) {return true;}
       if (o == null || getClass() != o.getClass()) {return false;}
       PlayerSong that = (PlayerSong) o;
       return Objects.equals(name, that.name) &&
               Objects.equals(singer, that.singer) &&
               Objects.equals(album, that.album) &&
               Objects.equals(time, that.time) &&
               Objects.equals(link_url, that.link_url) &&
               Objects.equals(picture, that.picture) &&
               Objects.equals(link_lrc, that.link_lrc);
   }

    @Override
    public int hashCode() {
        return Objects.hash(name, singer, album, time, link_url, picture, link_lrc);
    }
}
